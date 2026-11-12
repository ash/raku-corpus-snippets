unit class Foo;

BEGIN {
    my $foo = 1;
    { $?CLASS.^add_method('foo', anon method () { dd $foo } ) }
} 
