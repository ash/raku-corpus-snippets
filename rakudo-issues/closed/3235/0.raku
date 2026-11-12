use NativeCall;
role C {
   sub calloc(size_t,size_t --> Pointer) is native(Str) { * };
   method new { say calloc(1,1) }
}
C.new()
