use v6;
use NativeCall;

sub this_is_void( --> void ) is native("./libvoid.so") { * };

this_is_void();
