use NativeCall;
  
class Data is repr('CStruct') {
    has CArray[num32] $.data-in;

    submethod BUILD(CArray :$data-in) {
        $!data-in := $data-in;
    }
}


my $d = Data.new(data-in => CArray[num32].new);
