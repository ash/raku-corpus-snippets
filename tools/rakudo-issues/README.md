# tools/rakudo-issues/ — refreshing the Rakudo-issue snippets

Run the scripts from a scratch directory, not from inside this repository, and
keep the downloaded data in its own folder. `python3 -I` stops Python from
loading anything from the current directory.

1. **Download.** `python3 -I fetch.py raw/issues.json`

   This downloads every rakudo/rakudo issue (no pull requests) through
   GitHub's public search API, read-only and without a token. The API allows
   10 requests a minute and 1,000 results a query, so the script partitions by
   creation date; the full download is about 35 requests. It calls `curl`,
   because the python.org Python here has no CA bundle.
2. **Extract.** `python3 -I extract.py raw/issues.json work/snips.jsonl`

   This pulls code from the issue bodies: fenced blocks, `raku -e '…'` lines,
   `m:`/`c:` IRC-bot lines, and REPL transcripts (their `> ` lines). Comments
   are not read; the download does not include them.
3. **Build.** `python3 -I build.py new/rakudo-issues raw/issues.json work/snips.jsonl [CASES] [REVIEW_TSV]`

   This writes `{open,closed}/<issue>/<k>` and `index.tsv`.
   - `CASES` is a list of `issue.k` ids to keep. Without it, the first three
     snippets of every issue are kept.
   - `REVIEW_TSV` fills the review columns from a sweep's review table.

   With the current `index.tsv` turned into a case list, and rakupp's
   `review.tsv`, this reproduces today's 1,938 files byte for byte.
4. **Swap and regenerate.** Replace `rakudo-issues/{open,closed}` and
   `index.tsv` with the new ones, then run `RAKU=/path/to/rakudo harness/regen.sh`
   from the repository root.

An issue that closed since the last refresh moves from `open/` to `closed/`.
Its Rakudo output may then turn from "the bug" into "the reference", so read
the issue before trusting it.
