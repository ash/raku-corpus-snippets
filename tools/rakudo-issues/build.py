# build.py OUT ISSUES_JSON SNIPS_JSONL [CASES] [REVIEW_TSV]
#
# Lays out extracted snippets as OUT/{open,closed}/<issue>/<k>.raku (or .sh) and
# writes OUT/index.tsv. Nothing here runs any code.
#
#   ISSUES_JSON  fetch.py's download (issue state and title)
#   SNIPS_JSONL  extract.py's output
#   CASES        optional: the case ids to keep, one `issue.k` per line;
#                default every snippet with k < 3, as the sweep ran them
#   REVIEW_TSV   optional: a review table (rakupp's
#                docs/dev/findings/rakudo-issues-2026-11/review.tsv) that fills
#                the bucket, review and note columns; otherwise they are '-'
#
# A snippet that needs a `raku` flag (-n, -p, -M…, -I…) becomes a .sh wrapper
# around the code. Flags that only mean something to Rakudo's internals
# (--ll-exception, --target, --optimize) are dropped.
import csv, json, os, re, sys

out, issues_json, snips_jsonl = sys.argv[1:4]
cases_file = sys.argv[4] if len(sys.argv) > 4 and sys.argv[4] != '-' else None
review_file = sys.argv[5] if len(sys.argv) > 5 else None

iss = {i['number']: i for i in json.load(open(issues_json))}
snips = {}
for line in open(snips_jsonl):
    o = json.loads(line)
    snips[o['number']] = o['snips']
if cases_file:
    keep = {tuple(map(int, l.split('.'))) for l in open(cases_file) if l.strip()}
else:
    keep = {(n, k) for n, ss in snips.items() for k in range(min(3, len(ss)))}
review = {}
if review_file:
    for r in csv.DictReader(open(review_file), delimiter='\t'):
        review[r['case']] = r

SRC = {'block': 'code block', 'cmd': 'raku -e line', 'cmd-inline': 'raku -e line (inline)',
       'bot': 'IRC bot line (m:/c:)', 'bot-inline': 'IRC bot line (inline)', 'repl': 'REPL transcript inputs'}

def clean(s):
    return re.sub(r'[\t\n]+', ' ', s or '').strip()

rows = []
for n, k in sorted(keep):
    s = snips[n][k]
    it = iss[n]
    state = it['state']
    d = os.path.join(out, state, str(n))
    os.makedirs(d, exist_ok=True)
    flags = [f for f in s.get('flags', []) if re.match(r'^-(n|p|M\w[\w:]*|I\S+)$', f)]
    code = s['code'].rstrip('\n') + '\n'
    if flags:
        assert 'RAKU_SNIPPET_END' not in code
        name = f'{k}.sh'
        body = (f"# raku {' '.join(flags)} -e '…' as given in the issue\n"
                f"raku {' '.join(flags)} -e \"$(cat <<'RAKU_SNIPPET_END'\n{code}RAKU_SNIPPET_END\n)\"\n")
    else:
        name = f'{k}.raku'
        body = code
    with open(os.path.join(d, name), 'w') as f:
        f.write(body)
    r = review.get(f'{n}.{k}', {})
    reason = it.get('state_reason') or ''
    rows.append([f'./rakudo-issues/{state}/{n}/{name}', str(n),
                 state + ('/' + reason if state == 'closed' and reason else ''),
                 SRC.get(s['src'], s['src']), r.get('harness') or '-', r.get('verdict') or '-',
                 clean(r.get('note')) or '-', clean(it['title'])])

with open(os.path.join(out, 'index.tsv'), 'w') as f:
    f.write('file\tissue\tstate\tfrom\tbucket\treview\tnote\ttitle\n')
    for r in rows:
        f.write('\t'.join(r) + '\n')
print(len(rows), 'snippets written to', out)
