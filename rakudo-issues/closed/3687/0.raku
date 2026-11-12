use NativeCall;

class IntStruct is repr('CStruct') {
    has int32 $.first;
    has int32 $.second;
}


class StructIntStruct is repr('CStruct') {
    HAS IntStruct $.a;
    has int32 $.i;

    submethod TWEAK(:$first = 0, :$second = 0, :$i) {
	$!a := IntStruct.new(:$first, :$second);
	$!i = $i;
    }
}


my $a = StructIntStruct.new(:12first, :11second, :3i);

say $a.a.first;
say $a.a.second;
say $a.i;

my $ptr = nativecast(CArray[int32], $a);
say $ptr[0];
say $ptr[1];
say $ptr[2];
