role R[::T] { has T $!x }; class C does R[Any] { method m { $!x = Nil } }; C.new.m; say 'ok'
