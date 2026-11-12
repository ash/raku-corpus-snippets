my @a = [["a", ], ];
say @a[0;0]:v;       # a
say @a[0;0]:p;       # (0 0) => a
say @a[0;0]:kv;      # ((0 0) a)
say @a[0;0]:k;       # (0 0)
