#!/usr/bin/env raku

sub f() is hidden-from-backtrace is DEPRECATED('the literal 42') { 42 }

END {
	say f();
}
