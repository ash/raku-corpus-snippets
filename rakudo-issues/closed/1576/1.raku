use v6.c;
use NativeCall;

sub strlen(Str --> int32) is native('c') { * }

class Foo {
    method strlen(Str $str --> Int) { strlen($str) }
}

constant ZERO = strlen('');

sub MAIN { say Foo.strlen('ayy') }
