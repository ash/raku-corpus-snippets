#!/bin/sh
# regen.sh — regenerate run-status.tsv and expected/ for every snippet, under
# Rakudo, each run inside harness/sandbox.sb. The new set replaces the old one
# only when every run finished.
#   RAKU=/path/to/rakudo harness/regen.sh          (JOBS=8 by default)
set -eu
REPO=$(cd "$(dirname "$0")/.." && pwd)
: "${RAKU:?set RAKU to the Rakudo binary}"
JOBS="${JOBS:-8}"
cd "$REPO"
new=$(mktemp -d)
mkdir -p "$new/expected"
find rakudo-issues -type f \( -name '*.raku' -o -name '*.sh' \) | LC_ALL=C sort | sed 's|^|./|' |
  RAKU="$RAKU" EXPECTED="$new/expected" xargs -P "$JOBS" -n 1 \
    sandbox-exec -f harness/sandbox.sb -D WORK="$new" /bin/sh harness/gen-reference.sh > "$new/status.tsv"
LC_ALL=C sort -t "$(printf '\t')" -k5,5 "$new/status.tsv" > run-status.tsv
rm -rf "$REPO/expected"
mv "$new/expected" "$REPO/expected"
rm -rf "$new"
cut -f1 run-status.tsv | sort | uniq -c
