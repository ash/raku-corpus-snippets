use NativeCall; try sub :: is native(sub{ $*VM.platform-library-name("openssl".IO).basename }){}(); $!.payload
