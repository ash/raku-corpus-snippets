$ perl6 --ll-exception crash.pl6
...
50
moar(59513,0x70000aaa1000) malloc: can't allocate region
*** mach_vm_map(size=18446744061770395648) failed (error code=3)
moar(59513,0x70000aaa1000) malloc: *** set a breakpoint in malloc_error_break to debug
MoarVM panic: Memory allocation failed; could not allocate 18446744061770391744 bytes

$ perl6 --ll-exception crash.pl6
...
85
Segmentation fault: 11

$ perl6 --ll-exception crash.pl6
...
57
moar(55516,0x70000ce2c000) malloc: *** error for object 0x7fcb3ee43398: pointer being freed was not allocated
moar(55516,0x70000ce2c000) malloc: *** set a breakpoint in malloc_error_break to debug
Abort trap: 6

$ perl6 --ll-exception crash.pl6
...
51
MoarVM panic: Register types do not match between value and node

$ perl6 --ll-exception crash.pl6
...
47
Bus error: 10

$ perl6 --ll-exception crash.pl6
...
54
Contextual name cannot be null
   at SETTING::src/core.c/stubs.pm6:33  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/CORE.c.setting.moarvm:DYNAMIC)
 from SETTING::src/core.c/Promise.pm6:44  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/CORE.c.setting.moarvm:new)
 from SETTING::src/core.c/Proc/Async.pm6:93  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/CORE.c.setting.moarvm:)
 from SETTING::src/core.c/Proc/Async.pm6:56  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/CORE.c.setting.moarvm:BUILDALL)
 from SETTING::src/core.c/Mu.pm6:137  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/CORE.c.setting.moarvm:bless)
 from SETTING::src/core.c/Proc/Async.pm6:128  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/CORE.c.setting.moarvm:new)
 from SETTING::src/core.c/Proc/Async.pm6:122  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/CORE.c.setting.moarvm:new)
 from crash.pl6:3  (<ephemeral file>:)
 from crash.pl6:1  (<ephemeral file>:<unit>)
 from crash.pl6:1  (<ephemeral file>:<unit-outer>)
 from gen/moar/stage2/NQPHLL.nqp:1911  (/Users/brian/Projects/rakudo/install/share/nqp/lib/NQPHLL.moarvm:eval)
 from gen/moar/stage2/NQPHLL.nqp:2116  (/Users/brian/Projects/rakudo/install/share/nqp/lib/NQPHLL.moarvm:evalfiles)
 from gen/moar/stage2/NQPHLL.nqp:2076  (/Users/brian/Projects/rakudo/install/share/nqp/lib/NQPHLL.moarvm:command_eval)
 from gen/moar/Compiler.nqp:55  (/Users/brian/Projects/rakudo/install/share/perl6/lib/Perl6/Compiler.moarvm:command_eval)
 from gen/moar/stage2/NQPHLL.nqp:2001  (/Users/brian/Projects/rakudo/install/share/nqp/lib/NQPHLL.moarvm:command_line)
 from gen/moar/perl6.nqp:126  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/perl6.moarvm:MAIN)
 from gen/moar/perl6.nqp:91  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/perl6.moarvm:<mainline>)
 from <unknown>:1  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/perl6.moarvm:<main>)
 from <unknown>:1  (/Users/brian/Projects/rakudo/install/share/perl6/runtime/perl6.moarvm:<entry>)
