use nqp; class A { has Mu $!foo; method foo () { $!foo := nqp::null; say nqp::isnull($!foo) ?? "null" !! $!foo } }.new.foo
