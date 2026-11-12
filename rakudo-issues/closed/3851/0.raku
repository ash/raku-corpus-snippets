use v6.d;
use NativeCall;
class simple is repr('CStruct') {
    has uint16 $.value;
}

my $simple = simple.new(:value(0xffff));
say "BROKEN!" if $simple.value ≠ 0xffff;
