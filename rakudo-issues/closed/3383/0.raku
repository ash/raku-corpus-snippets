use Test;

ok(Array ~~ Positional);
ok(Array[Str] ~~ Positional);
ok(Array[Str] ~~ Positional[Str]);
ok(Array[Str:D] ~~ Positional);
ok(Array[Str:D] ~~ Positional[Str]);
ok(Array[Str:D] ~~ Positional[Str:D]);
done-testing;
