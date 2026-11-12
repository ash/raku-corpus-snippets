use NativeCall; sub strlen(Str --> size_t) is native {*}; sub free(Pointer[void]) is native {*}; my Str $foo = explicitly-manage('ayy lmao'); say strlen($foo); free(nativecast(Pointer[void], $foo))
