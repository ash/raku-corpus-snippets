class A { has $.a; }; class B { has $.b }; class C is B is A { }; say C.new(:a(1), :b(2))
