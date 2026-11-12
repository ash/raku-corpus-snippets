class C { has &.c where {.arity == 1}; method foo { &.c.perl.say; }}; C.^attributes.say
