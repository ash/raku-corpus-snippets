
use v6;
use NativeCall;
unit class Native::Example;

my constant $library = %?RESOURCES<libraries/example>.Str;

class MyStruct is repr('CStruct') {
    has CArray[int32] $!x;
    method to-list {
        $!x.list;
    }
    submethod BUILD {
        $!x := CArray[int32].allocate: 10;
    }
}

my sub func(MyStruct) is native($library) { * }

method run {
    my $a = MyStruct.new;
    $a.to-list.say;
    func($a);
    $a.to-list.say;
}
