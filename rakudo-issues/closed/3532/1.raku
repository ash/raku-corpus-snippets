# cat b.raku
my int @a;
for (0 .. 999999) { @a[$_] = $_; }
