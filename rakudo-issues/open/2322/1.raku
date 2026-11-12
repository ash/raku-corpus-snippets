role Foo[::T] { method z(T \x = 42) {} }; class Bar does Foo[int64] {}.new.z
