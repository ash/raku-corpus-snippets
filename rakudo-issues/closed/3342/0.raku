use NativeCall;

class Foo is repr('CStruct') {
    has int32 $.a;
    HAS int32 @.b[1] is CArray;
}

for ^∞ {
    say $_;
    Foo.new;
}
