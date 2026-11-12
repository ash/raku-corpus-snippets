#!/bin/sh
# diff.sh — run every snippet with a reference (OK or NONZERO) under $RAKUPP,
# each inside harness/sandbox.sb, and summarise.
#   RAKUPP=/path/to/binary harness/diff.sh [./relpath …]   (JOBS=8 by default)
# With paths, only those snippets run.
# RESULTS (default ../raku-corpus-snippets-results) receives:
#   - a .verdict per snippet, and .out/.err for each one that is not a MATCH;
#   - verdicts.tsv, all the verdict rows;
#   - summary.tsv: verdict, issue state, review verdict, file.
# The review column says whether a difference is the implementation's bug or
# Rakudo's — see the top-level README. Old results under $RESULTS/rakudo-issues
# are cleared first.
set -eu
REPO=$(cd "$(dirname "$0")/.." && pwd)
: "${RAKUPP:?set RAKUPP to the binary under test}"
JOBS="${JOBS:-8}"
RESULTS="${RESULTS:-$REPO/../raku-corpus-snippets-results}"
mkdir -p "$RESULTS"; RESULTS=$(cd "$RESULTS" && pwd)
rm -rf "$RESULTS/rakudo-issues"
cd "$REPO"
{ if [ $# -gt 0 ]; then printf '%s\n' "$@"; else awk -F'\t' '$1=="OK"||$1=="NONZERO"{print $5}' run-status.tsv; fi; } |
  RAKUPP="$RAKUPP" RESULTS="$RESULTS" xargs -P "$JOBS" -n 1 \
    sandbox-exec -f harness/sandbox.sb -D WORK="$RESULTS" /bin/sh harness/diff-rakupp.sh
find "$RESULTS/rakudo-issues" -name '*.verdict' -exec cat {} + | LC_ALL=C sort -t "$(printf '\t')" -k5,5 > "$RESULTS/verdicts.tsv"
awk -F'\t' 'NR==FNR { if (FNR > 1) { st[$1] = $3; rv[$1] = $6 } next }
            { s = st[$5]; sub(/\/.*/, "", s); print $1 "\t" s "\t" rv[$5] "\t" $5 }' \
    rakudo-issues/index.tsv "$RESULTS/verdicts.tsv" > "$RESULTS/summary.tsv"
echo "verdict by issue state:"
cut -f1,2 "$RESULTS/summary.tsv" | sort | uniq -c
echo "review verdicts of the snippets that did not MATCH:"
awk -F'\t' '$1 != "MATCH" {print $3}' "$RESULTS/summary.tsv" | sort | uniq -c | sort -rn
