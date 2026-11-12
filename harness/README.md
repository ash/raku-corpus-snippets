# harness/ — references, differ, sandbox

| file | what it does |
|---|---|
| `gen-reference.sh <relpath>` | runs one snippet twice under `$RAKU` (Rakudo) in a copy of its directory; writes `$EXPECTED/<relpath>.out` (default `expected/`) and prints a `run-status.tsv` row |
| `diff-rakupp.sh <relpath>` | runs one snippet under `$RAKUPP` and compares stdout and exit code with the reference; writes `$RESULTS/<relpath>.verdict`, plus `.out`/`.err` when it is not a MATCH |
| `regen.sh` | `gen-reference.sh` over every snippet in the sandbox; replaces `run-status.tsv` and `expected/` only when every run finished |
| `diff.sh` | `diff-rakupp.sh` over every OK/NONZERO snippet in the sandbox, then `verdicts.tsv`, `summary.tsv` and counts |
| `run-limited.pl SECONDS CMD…` | runs CMD in a process group of its own; kills the group at the limit (exit 142) and again when CMD exits |
| `sandbox.sb` | macOS `sandbox-exec` profile: no writes outside `WORK` and the temp dirs, no network beyond localhost |
| `shim/raku`, `shim/perl6` | what a `.sh` snippet's `raku` resolves to: `$SHIM_RAKU`, set by the two scripts above |

The protocol is raku-corpus's, so a reference made here and one made there mean
the same thing:

- a throwaway copy of the snippet's directory;
- stdin from `/dev/null`;
- `TZ=UTC`;
- `-I. -Ilib -I../lib`;
- a 30 s limit (`ALARM`). A reference that needed more than 25 s under Rakudo
  gets 150 s in `diff-rakupp.sh`.

The one difference is what a timeout kills. raku-corpus runs
`perl -e 'alarm N; exec …'`, and the alarm reaches only the program itself. A
snippet that starts children (rakudo/rakudo#5732 and #5733 do) leaves them
running after its parent dies. `run-limited.pl` kills the whole group: at the
limit, and also after a normal exit.

A snippet can still escape by putting itself in a new session (`setsid`).
`sandbox.sb` limits what such a process can do, but not how long it lives, so
after a large run check for strays:

    ps -Ao pid,ppid,etime,command | awk '$2==1' | grep -E 'rakudo|rakupp|moar'

`RAKU` and `RAKUPP` have no defaults. Where bare `raku` is another
implementation, a default would quietly make that implementation the
reference.
