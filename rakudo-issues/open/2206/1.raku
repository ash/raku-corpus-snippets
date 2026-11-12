"foo bar ber mer" ~~ /$<meow>=(\w+)>\s*)+/;
say [:$<meow>, :%<meow>];
