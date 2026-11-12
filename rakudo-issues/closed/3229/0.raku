use NativeCall
  
sub atoi(Str is encoded("utf8") --> int32) is native("/usr/lib/x86_64-linux-gnu/libc.so.6") { * }
