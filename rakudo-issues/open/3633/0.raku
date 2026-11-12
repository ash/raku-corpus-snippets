use NativeCall;

constant LIB = './inttest.so';

class mystruct is repr('CStruct') is export {
  HAS int32 @.dat[2] is CArray;
}

sub alloc_mystruct(--> mystruct) is native(LIB) is export { * }
sub free_mystruct(mystruct $c) is native(LIB) is export { * }
sub fill_mystruct(int32 $num0, int32 $num1, mystruct $s) is native(LIB) is export { * }
