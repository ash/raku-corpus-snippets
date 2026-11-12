
Welcome to MoarVM!

Updating submodules .................................... OK
Configuring native build environment ................... 
FAIL
    assuming POSIX userland ............................     trying to compile a simple C program ............... YES
OK

    probing whether your compiler thinks that it is gcc  YES
    probing how your compiler does static inline ....... static __inline__
    your CPU can read unaligned values for all of int32 int64 num64
    probing the size of pointers ....................... 8
    probing C type support for: _Bool, bool ............ YES: _Bool,bool
    probing computed goto support ...................... YES
    probing pthread_yield support ...................... NO
    probing support of rdtscp intrinsic ................ YES

        make: make
     compile: cc  -O -DNDEBUG  -D_REENTRANT -D_FILE_OFFSET_BITS=64 -fPIC
    includes:  -I3rdparty/libuv/include -I3rdparty/libuv/src -I3rdparty/libatomicops/src -I3rdparty/libtommath -I3rdparty/dyncall/dynload -I3rdparty/dyncall/dyncall -I3rdparty/dyncall/dyncallback
        link: cc  -O -DNDEBUG -Wl,-rpath,"/@libdir@"
        libs: -lm -lpthread

  byte order: little endian

Configuring 3rdparty libs .............................. FAIL
    continuing anyway .................................. OK

  3rdparty: 3rdparty/cmp/libcmp.a
            3rdparty/dyncall/dyncall/libdyncall_s.a
            3rdparty/dyncall/dyncallback/libdyncallback_s.a
            3rdparty/dyncall/dynload/libdynload_s.a
            3rdparty/libatomicops/src/libatomic_ops.a
            3rdparty/libtommath/libtommath.a
            3rdparty/libuv/libuv.a
            3rdparty/sha1/libsha1.a
            3rdparty/tinymt/libtinymt.a

Generating src/gen/config.c ............................ OK
Generating src/gen/config.h ............................ OK
Generating Makefile .................................... OK
Generating tools/check.mk .............................. OK
Generating build/mk-moar-pc.pl ......................... OK

Configuration FAIL. You can try to salvage the generated Makefile.
