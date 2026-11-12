role SinkLog { method sink { say "Sunk!" } };

my &f = {for 0 { 1 but SinkLog }};
f;
