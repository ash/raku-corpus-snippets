#!/bin/sh
# diff-rakupp.sh <relpath> — run one snippet under $RAKUPP in a throwaway copy of
# its directory, and compare stdout and exit code with the Rakudo reference.
# Writes $RESULTS/<relpath>.verdict (verdict<TAB>exit<TAB>expected exit<TAB>ms<TAB>./relpath),
# plus .out/.err when the verdict is not MATCH:
#   MATCH  DIFF-OUT  DIFF-EXIT  DIFF-BOTH  TIMEOUT
# Despite the name, any implementation can stand in $RAKUPP.
# A MATCH under rakudo-issues/open/ usually means sharing the bug the issue
# reports; read rakudo-issues/index.tsv before counting it as a pass.
set -u
f="$1"
REPO=$(cd "$(dirname "$0")/.." && pwd)
RP="${RAKUPP:?set RAKUPP to the binary under test}"
RES="${RESULTS:-$REPO/../raku-corpus-snippets-results}"
EXPECTED="${EXPECTED:-$REPO/expected}"
RUN_STATUS="${RUN_STATUS:-$REPO/run-status.tsv}"
rel=${f#./}
unit=$(dirname "$rel")
b=$(basename "$rel")

exp_out=$EXPECTED/$rel.out
exp_ec=$(awk -F'\t' -v F="./$rel" '$5==F {print $2}' "$RUN_STATUS")
exp_ms=$(awk -F'\t' -v F="./$rel" '$5==F {print $3}' "$RUN_STATUS")
ALARM="${ALARM:-30}"
# a reference that needed >25 s under Rakudo gets 150 s here
case "$exp_ms" in (''|*[!0-9]*) ;; (*) [ "$exp_ms" -gt 25000 ] && ALARM=150;; esac

o=$(mktemp); e=$(mktemp)
tmp=$(mktemp -d); cp -R "$REPO/$unit/." "$tmp/"
t0=$(perl -MTime::HiRes=time -e 'printf "%.0f", time()*1000')
( cd "$tmp" || exit 125
  case "$b" in
    *.sh) PATH="$REPO/harness/shim:$PATH" SHIM_RAKU="$RP" TZ=UTC \
            perl "$REPO/harness/run-limited.pl" "$ALARM" /bin/sh "$b" >"$o" 2>"$e" </dev/null;;
    *)    TZ=UTC perl "$REPO/harness/run-limited.pl" "$ALARM" "$RP" -I. -Ilib -I../lib "$b" >"$o" 2>"$e" </dev/null;;
  esac
)
ec=$?
t1=$(perl -MTime::HiRes=time -e 'printf "%.0f", time()*1000')
rm -rf "$tmp"

if [ "$ec" -eq 142 ]; then verdict=TIMEOUT
elif cmp -s "$o" "$exp_out"; then
  if [ "$ec" = "$exp_ec" ]; then verdict=MATCH; else verdict=DIFF-EXIT; fi
else
  if [ "$ec" = "$exp_ec" ]; then verdict=DIFF-OUT; else verdict=DIFF-BOTH; fi
fi

mkdir -p "$RES/$(dirname "$rel")"
if [ "$verdict" != MATCH ]; then
  cp "$o" "$RES/$rel.out"; [ -s "$e" ] && cp "$e" "$RES/$rel.err"
fi
printf '%s\t%s\t%s\t%s\t./%s\n' "$verdict" "$ec" "$exp_ec" $((t1-t0)) "$rel" > "$RES/$rel.verdict"
rm -f "$o" "$e"
exit 0
