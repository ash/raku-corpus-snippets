# rakudo-issues/ — code from Rakudo's issue tracker

1,938 snippets taken from issues on
[rakudo/rakudo](https://github.com/rakudo/rakudo/issues), as the issues stood
on 2026-11-12. Each one is quoted from the issue that [`index.tsv`](index.tsv)
names, and belongs to that issue's author.

The snippets come from the Raku++ sweep of the tracker, written up in
rakupp's `docs/dev/findings/RAKUDO-ISSUES-2026-11.md`. That doc covers how
issues were classified, how the snippets were extracted, and what running them
found.

## Layout

    closed/<issue>/<k>.raku     snippets from issues that were closed by 2026-11-12
    open/<issue>/<k>.raku       snippets from issues that were still open then
    index.tsv                   one row per file: issue, state, review verdict, note, title

References are under `../expected/rakudo-issues/` and statuses in
`../run-status.tsv`, as for any source in this repository.

- `<k>` is the snippet's position among those extracted from the issue. It is
  the same numbering as the case ids in rakupp's
  `docs/dev/findings/rakudo-issues-2026-11/review.tsv`, so case `1447.0` is
  `closed/1447/0.raku`.
- Code is verbatim from the issue, with nothing added, so line numbers match
  what the issue quotes. There are two exceptions:
  - REPL transcripts keep only their `> ` input lines, joined with `;`.
  - Seven one-liners that need a `raku` flag (`-n`, `-MTest`, `-Ilib`) are
    `.sh` wrappers around the code.

  Flags that only mean something to Rakudo's internals (`--ll-exception`,
  `--target=…`, `--optimize=…`) were dropped.

## Which snippets

The sweep extracted 3,844 snippets from 2,017 issues and ran up to three per
issue, 3,358 in all, under both Rakudo and Raku++. Kept here are:

- every snippet whose result was reviewed (1,084). That covers every
  disagreement between the engines, every open-issue snippet where they
  agreed, and every open-issue snippet where both died and the code was not
  obviously broken;
- every closed-issue snippet where both engines already agreed (814);
- every snippet that timed out under both (37) or crashed under both (3).

Left out are 1,420 snippets that both engines refused. Nearly all of them are
extraction noise: a code block mixed with its printed output, a module that is
not installed, a missing input file, or the network.

## Read the review column before trusting a reference

- **`closed/`**: Rakudo's output is normally the fixed behaviour, so it is a
  fair reference.
- **`open/`**: Rakudo's output is usually **the bug the issue reports**. A
  MATCH there means the implementation under test shares that bug.

The `review` column of `index.tsv` gives the sweep's verdict:

| verdict | meaning |
|---|---|
| `PPBUG` | Raku++ wrong, Rakudo (or the issue) right |
| `MISSING` | Raku++ lacks something Rakudo has |
| `PPCRASH` | Raku++ crashes or hangs where Rakudo does not |
| `LAX` | Raku++ accepts code Rakudo rightly refuses |
| `PPWIN` | Raku++ behaves as the issue expects while Rakudo does not — here the reference is the bug |
| `SHARED` | both show the open issue's bug |
| `BOTHOK` | both already behave as the issue wants |
| `ERRMSG` | only the error text differs |
| `INTERNAL` | exercises Rakudo/MoarVM internals |
| `UNCLEAR` | could not be judged from the outputs |
| `NOISE` | timing, hash order, environment or a broken snippet |
| `-` | not reviewed: a closed issue where both engines agreed, or a run both timed out or crashed on |

The `bucket` column is the raw result of the sweep's own run on 2026-11-12:
`match`, `out-diff`, `pp-dies`, `rk-dies`, `both-die`, and the timeout and
crash variants. That run used a 10 s limit and ran one-liners as `-e`, so it
can differ from the status below.

## References and status (Rakudo v2026.09)

Made by `harness/gen-reference.sh` under **Rakudo v2026.09**. Each snippet ran
twice in a copy of its directory, with stdin from `/dev/null`, `TZ=UTC`, a
30 s limit and `sandbox-exec`.

| status | closed/ | open/ | total | meaning |
|---|---:|---:|---:|---|
| OK | 972 | 332 | 1,304 | exit 0, both runs identical — reference stored |
| NONZERO | 154 | 319 | 473 | deterministic, non-zero exit — reference stored |
| NONDET | 76 | 18 | 94 | the two runs differed (timing, hash order, threads) — no reference |
| TIMEOUT | 47 | 20 | 67 | over 30 s — infinite by design, or the bug is a hang |
| **total** | 1,249 | 689 | 1,938 | |

The 30 s references were made with the raku-corpus harness, whose timeout
killed only the snippet's own process. That is how #5732 and #5733 left
their `runme.raku` children running for an hour, and why this repository's
harness kills the whole process group instead. The exit codes it reports are
the same (142 for a timeout, 128 + signal for a crash), so the references
stand.

## Raku++ against these references

Raku++ 5.7.0-111-g56aec789 on 2026-11-12, every OK/NONZERO snippet:

| verdict | closed/ | open/ |
|---|---:|---:|
| MATCH | 820 | 444 |
| DIFF-OUT | 102 | 80 |
| DIFF-EXIT | 93 | 81 |
| DIFF-BOTH | 109 | 44 |
| TIMEOUT | 2 | 2 |

Nearly every snippet that does not MATCH carries a review verdict that
explains it:

| review verdict | snippets |
|---|---:|
| PPBUG | 133 |
| PPWIN (the reference is Rakudo's bug) | 129 |
| LAX | 95 |
| NOISE | 53 |
| UNCLEAR | 36 |
| INTERNAL | 21 |
| MISSING | 18 |
| SHARED | 15 |
| ERRMSG | 5 |
| PPCRASH | 5 |

Three were not reviewed:

- `closed/5368/0` and `closed/5470/0` agreed in the sweep's 10 s `-e` run, but
  not here.
- `closed/4206/1` timed out under both engines in that run.
