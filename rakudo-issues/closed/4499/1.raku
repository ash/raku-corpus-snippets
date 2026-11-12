my $foo = 42;
{ let $foo = Nil }
say $foo;              # 42

my @foo = 42;
{ let @foo = Nil }
say @foo;              # [42]
