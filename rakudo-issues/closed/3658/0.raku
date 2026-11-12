my @a = 3, 4, 5;
@a[-5..∞]:delete; # same should work with *
say @a;
say @a.elems
