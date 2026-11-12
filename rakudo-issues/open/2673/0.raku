use v6.d;
use NativeCall;
unit class Foo is repr('CStruct');

my Str constant LIB = './foo'.IO.absolute;

sub foo_init(Pointer[::?CLASS] is rw, int32 --> int32) is native(LIB) {*}
sub foo_free(::?CLASS) is native(LIB) {*}
sub foo_strerror(int32 --> Str) is native(LIB) {*}

method new(Int $bar = 0) {
    my Pointer[::?CLASS] $ptr .= new;
    my Int $err = foo_init($ptr, $bar);
    die "Failed to initialize Foo: {foo_strerror($err)}" if $err;
    $ptr.deref
}

submethod DESTROY() {
    foo_free(self)
}
