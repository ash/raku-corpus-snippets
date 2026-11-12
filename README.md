# raku-corpus-snippets

Short Raku programs written by other people, kept for testing Raku
implementations. This is the companion to
[raku-corpus](https://github.com/ash/raku-corpus), which holds Andrew
Shitov's own real-world programs. The two are separate repositories because
their contents differ in three ways:

- **Authorship.** Nothing here is Andrew Shitov's code. Every snippet is
  quoted from a public source, and the index names that source.
- **What a reference means.** In raku-corpus, Rakudo's output is the expected
  answer. Here it is the answer only where the source says the behaviour is
  settled. Elsewhere, Rakudo's output can be the very bug the source reports.
- **Shape.** These are minimal reproductions, a few lines each, not programs
  that combine many features.

## Sources

| directory | snippets | from | as of |
|---|---:|---|---|
| [`rakudo-issues/`](rakudo-issues/README.md) | 1,938 | [rakudo/rakudo](https://github.com/rakudo/rakudo/issues) GitHub issues, split into `closed/` and `open/` | 2026-11-12 |

## Layout

Follows raku-corpus wherever it can:

    <source>/…                 the snippets, plus <source>/index.tsv and <source>/README.md
    run-status.tsv             one row per snippet: status, exit, ms, src-hint, ./relpath
    expected/<relpath>.out     Rakudo's stdout for each OK or NONZERO snippet
    harness/                   reference generator, differ, sandbox, drivers
    tools/<source>/            how a source was collected, to refresh it

`run-status.tsv` statuses are those of raku-corpus:

| status | meaning |
|---|---|
| `OK` | exit 0, two runs identical — reference stored |
| `NONZERO` | non-zero exit, two runs identical — reference stored |
| `NONDET` | the two runs differed — no reference |
| `TIMEOUT` | over 30 s — no reference |

## Running an implementation against it

    RAKUPP=/path/to/binary harness/diff.sh

This runs every snippet that has a reference, eight at a time. Each run happens
in a throwaway copy of the snippet's directory, inside
[`harness/sandbox.sb`](harness/sandbox.sb), with a 30 s limit on the
snippet's whole process group. It then prints verdict counts, and writes
`summary.tsv` to `../raku-corpus-snippets-results/` (or `$RESULTS`). Read
the review column there before counting a MATCH as a pass, or a difference
as a failure.

To remake the references: `RAKU=/path/to/rakudo harness/regen.sh`. Details are
in [harness/README.md](harness/README.md).

**Keep the sandbox.** These are strangers' snippets. They write files, start
processes, open sockets, and loop forever by design. On macOS, `sandbox.sb`
denies writes outside the scratch directory and the system temp dirs, and
denies any network beyond localhost. `harness/run-limited.pl` kills the
snippet's whole process group, both at the time limit and when it exits, so
anything the snippet starts dies with it.

## Copyright

No licence is granted by this repository. Each snippet remains the work of
the person who posted it, quoted with a link back (`<source>/index.tsv`) for
the purpose of testing implementations of the language. The harness and
tools are by Andrew Shitov.
