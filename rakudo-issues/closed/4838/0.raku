say 0 != 0;                 # False

my @a = 0, 0, 0;
say @a «==» @a;             # [True True True]
say @a «!=» @a;             # [True True True] <--- why?
say @a «!==» @a;            # [False False False]
