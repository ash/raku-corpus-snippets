role SinkLog { method sink { say "Sunk!" } };


{for 0 { 1 }}();                      # no warn
{for 0 { 1 but SinkLog }}();          # no warn; no sink

{1 for 0}();                          # no warn
{1 but SinkLog for 0}();              # no warn; no sink

for 0 { 1 }                           # warns
for 0 { 1 but SinkLog }               # warns; sinks

1 for 0;                              # warns
1 but SinkLog for 0;                  # warns; sinks



{while !$++ { 1 }}();                 # warns
{while !$++ { 1 but SinkLog }}();     # no warn; sinks

{1 while !$++}();                     # warns
{1 but SinkLog while !$++}();         # warns; no sink

while !$++ { 1 }                      # warns
while !$++ { 1 but SinkLog }          # no warn; no sink

1 while !$++;                         # warns
1 but SinkLog while !$++;             # warns; no sink



{loop (;!$++;) { 1 }}();              # warns
{loop (;!$++;) { 1 but SinkLog }}();  # no warn; sinks

loop (;!$++;) { 1 }                   # warns
loop (;!$++;) { 1 but SinkLog }       # no warn; no sink
