class C { has &.foo where { True }; }; C.new(:foo(sub { })).foo;
