# cat a.raku
my int32 @a[1000000];
for (0 .. 999999) { @a[$_] = $_; }
