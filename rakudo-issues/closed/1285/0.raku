my role Coercer[::T] { method c(T $v) { $v } }; say Coercer[Int()].new.c: 42.12
