my Int %h = :42foo; %h.map: { .value = 'meows' if .key eq 'foo' }; dd %h
