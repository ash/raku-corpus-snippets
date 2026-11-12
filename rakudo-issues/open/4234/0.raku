...
our %OS_AIX = (
    %OS_POSIX,

    defs                => [ qw( _ALL_SOURCE _XOPEN_SOURCE=500 _LINUX_SOURCE_COMPAT ) ],
    syslibs             => [ @{$OS_POSIX{syslibs}}, qw( rt dl perfstat ) ],
    ldmiscflags         => '-Wl,-bmaxdata:0x80000000,-brtl',
    ldrpath             => '-L"/@libdir@"',
    ldrpath_relocatable => '-L"/@libdir@"',
...
