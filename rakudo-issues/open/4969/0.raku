use NativeCall;
class TestStruct is repr('CStruct') {
    HAS int32 @.xs[4] is CArray;
}

my $s = TestStruct.new;
say $s.xs.list;

$s.xs[7] = 42; # should error

say $s.xs.list;
