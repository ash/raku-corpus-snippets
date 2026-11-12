BEGIN 'sandbox/Foo.pm6'.IO.spurt: 'unit class Foo;'; use lib <sandbox>; require Foo; say Foo.HOW.^name
