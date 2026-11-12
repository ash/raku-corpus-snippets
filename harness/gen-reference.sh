#!/bin/sh
# gen-reference.sh <relpath> — run one snippet twice under Rakudo, each time in a
# throwaway copy of its directory. Writes $EXPECTED/<relpath>.out and prints a
# run-status.tsv row: status<TAB>exit<TAB>ms<TAB>src-hint?<TAB>./relpath.
#   OK       exit 0, both runs identical — reference written
#   NONZERO  identical runs, non-zero exit — reference written
#   NONDET   the two runs differed — no reference
#   TIMEOUT  either run hit the $ALARM limit (default 30 s) — no reference
# Protocol as in raku-corpus: stdin /dev/null, TZ=UTC, `-I. -Ilib -I../lib`.
# A `.sh` snippet runs under /bin/sh with harness/shim first on PATH, so its
# `raku` is $RAKU.
#
# RAKU is required: on a machine where bare `raku` is another implementation,
# defaulting to it would quietly record that implementation as the reference.
set -u
f="$1"
REPO=$(cd "$(dirname "$0")/.." && pwd)
RAKU="${RAKU:?set RAKU to the Rakudo binary}"
EXPECTED="${EXPECTED:-$REPO/expected}"
ALARM="${ALARM:-30}"
rel=${f#./}
unit=$(dirname "$rel")
b=$(basename "$rel")

run_once() { # $1 out file; returns the exit code
  tmp=$(mktemp -d); cp -R "$REPO/$unit/." "$tmp/"
  ( cd "$tmp" || exit 125
    case "$b" in
      *.sh) PATH="$REPO/harness/shim:$PATH" SHIM_RAKU="$RAKU" TZ=UTC \
              perl "$REPO/harness/run-limited.pl" "$ALARM" /bin/sh "$b" >"$1" 2>/dev/null </dev/null;;
      *)    TZ=UTC perl "$REPO/harness/run-limited.pl" "$ALARM" "$RAKU" -I. -Ilib -I../lib "$b" >"$1" 2>/dev/null </dev/null;;
    esac
  )
  ec=$?
  rm -rf "$tmp"
  return $ec
}

o1=$(mktemp); o2=$(mktemp)
t0=$(perl -MTime::HiRes=time -e 'printf "%.0f", time()*1000')
run_once "$o1"; ec1=$?
t1=$(perl -MTime::HiRes=time -e 'printf "%.0f", time()*1000')
run_once "$o2"; ec2=$?

hint=""
grep -lqE '\b(rand|srand|roll|pick|now|DateTime\.now|Date\.today|\$\*PID)\b' "$REPO/$rel" 2>/dev/null && hint="src-hint"

if [ "$ec1" -eq 142 ] || [ "$ec2" -eq 142 ]; then status=TIMEOUT
elif ! cmp -s "$o1" "$o2" || [ "$ec1" != "$ec2" ]; then status=NONDET
elif [ "$ec1" -eq 0 ]; then status=OK
else status=NONZERO
fi
if [ "$status" = OK ] || [ "$status" = NONZERO ]; then
  mkdir -p "$EXPECTED/$(dirname "$rel")"
  cp "$o1" "$EXPECTED/$rel.out"
fi
rm -f "$o1" "$o2"
printf '%s\t%s\t%s\t%s\t./%s\n' "$status" "$ec1" $((t1-t0)) "$hint" "$rel"
