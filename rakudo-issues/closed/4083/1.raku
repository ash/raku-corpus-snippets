sub foo($x is rw) { }; foo(1); CATCH { .message }
