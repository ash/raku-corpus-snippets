###### 5 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039


###### 15 s390x t/04-nativecall/05-arrays.t
1..41
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039


###### 28 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

    # Looks like you planned 3 tests, but ran 0
./looptests: line 8: 16443 Segmentation fault      PERL6LIB=lib ./perl6 $f

###### 23 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

    # Looks like you planned 3 tests, but ran 0
./looptests: line 8: 39134 Segmentation fault      PERL6LIB=lib ./perl6 $f


####### 8 mips t/06-telemetry/01-basic.t
1..41
ok 1 - did we get a Telemetry object from T
ok 2 - did we get a non-zero value for wallclock using AT-KEY
ok 3 - did we get a non-zero value for wallclock with a method
ok 4 - did we get a non-zero value for cpu using AT-KEY
ok 5 - did we get a non-zero value for cpu with a method
ok 6 - did we get a non-zero value for max-rss using AT-KEY
ok 7 - did we get a non-zero value for max-rss with a method
ok 8 - did we get a Telemetry object from T.perl.EVAL
ok 9 - did wallclock roundtrip ok in Telemetry?
ok 10 - did cpu roundtrip ok in Telemetry?
ok 11 - did max-rss roundtrip ok in Telemetry?
ok 12 - Did we get a Telemetry::Period
ok 13 - did we get a non-zero value for wallclock using AT-KEY
ok 14 - did we get a non-zero value for wallclock using AT-KEY
ok 15 - did we get a non-zero value for cpu using AT-KEY
ok 16 - did we get a non-zero value for cpu using AT-KEY
ok 17 - did we get a Telemetry::Period object from period.perl.EVAL
ok 18 - did wallclock roundtrip ok in Telemetry::Period?
ok 19 - did cpu roundtrip ok in Telemetry::Period?
ok 20 - did max-rss roundtrip ok in Telemetry::Period?
ok 21 - did it contain a Sampler
ok 22 - there are 2 default default instruments
ok 23 - did we get a Telemetry::Instrument::Usage
ok 24 - did we get a Telemetry::Instrument::ThreadPool
ok 25 - was &snap exported
ok 26 - was &snapper exported
ok 27 - was &periods exported
ok 28 - was &report exported
ok 29 - was &safe-ctrl-c exported
ok 30 - was &T exported
ok 31 - did the snap return nothing
ok 32 - did periods auto-add an extra snap?
ok 33 - is it a Telemetry::Period
ok 34 - Did the call to periods remove all of the snaps?
ok 35 - did the snapper return nothing
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039
./looptests: line 8:  7431 Illegal instruction     PERL6LIB=lib ./perl6 $f


###### 51 s390x t/04-nativecall/05-arrays.t
1..41
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

###### 6 s390x t/05-messages/02-errors.t
...
    ok 3 - .message matches /'should be in 0..0' .+ '*-1000'/
ok 24 - did we throws-like X::OutOfRange?
    1..3
    ok 1 - STDOUT
    not ok 2 - STDERR
    # Failed test 'STDERR'
    # at /home/robertle/rakudo/t/packages/Test/Helpers.pm6 (Test::Helpers) line 32
    # expected: /
    #         'Unhandled exception in code scheduled on thread' .+
    #         'Too many positionals' .+ 'expected 0 arguments but got 1'
    #     /
    #  matcher: 'infix:<~~>'
    #      got: "Unhandled exception in code scheduled on thread 4\n"
    not ok 3 - Exit code
    # Failed test 'Exit code'
    # at /home/robertle/rakudo/t/packages/Test/Helpers.pm6 (Test::Helpers) line 33
    # expected: 1
    #  matcher: 'infix:<~~>'
    #      got: 0
    # Looks like you failed 2 tests of 3
not ok 25 - .tap block with incorrect signature must fail
# Failed test '.tap block with incorrect signature must fail'
# at /home/robertle/rakudo/t/packages/Test/Helpers.pm6 (Test::Helpers) line 29

###### 0 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

    # Looks like you planned 3 tests, but ran 0
./looptests: line 9: 19754 Segmentation fault      PERL6LIB=lib ./perl6 $f

###### 11 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

    # Looks like you planned 3 tests, but ran 0
./looptests: line 9: 31473 Segmentation fault      PERL6LIB=lib ./perl6 $f

####### 19 mips t/04-nativecall/21-callback-other-thread.t
1..9
ok 1 - Sanity check: Calling callback on thread that set it works
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 35840 - should be less than 1039
   at SETTING::src/core/Any.pm6:542  (./CORE.setting.moarvm:sum)
 from t/04-nativecall/21-callback-other-thread.t:23  (<ephemeral file>:)
 from SETTING::src/core/Thread.pm6:54  (./CORE.setting.moarvm:THREAD-ENTRY)

###### 7 s390x t/04-nativecall/05-arrays.t
1..41
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

####### 2 mips t/04-nativecall/03-simple-returns.t
1..11
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 35840 - should be less than 1039
   at SETTING::src/core/Any.pm6:504  (./CORE.setting.moarvm:prefix:<++>)
 from SETTING::src/core/ThreadPoolScheduler.pm6:259  (./CORE.setting.moarvm:run-one)
 from SETTING::src/core/ThreadPoolScheduler.pm6:296  (./CORE.setting.moarvm:)
 from SETTING::src/core/Thread.pm6:54  (./CORE.setting.moarvm:THREAD-ENTRY)


###### 8 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

    # Looks like you planned 3 tests, but ran 0
./looptests: line 9: 46541 Segmentation fault      PERL6LIB=lib ./perl6 $f


###### 46 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

    # Looks like you planned 3 tests, but ran 0
./looptests: line 9: 31934 Segmentation fault      PERL6LIB=lib ./perl6 $f


####### 10 mips t/04-nativecall/00-misc.t
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039
./looptests: line 9: 22309 Illegal instruction     PERL6LIB=lib ./perl6 $f


###### 12 s390x t/05-messages/02-errors.t
1..37
    1..3
    ok 1 - STDOUT
    ok 2 - STDERR
    ok 3 - Exit code
ok 1 - :2(1) suggests using 1.base(2)
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches / '<anon>' /
ok 2 - anonymous subs get '<anon>' in arity error messages
    1..3
Unhandled exception in code scheduled on thread 4
Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039

    # Looks like you planned 3 tests, but ran 0
./looptests: line 9:  8938 Segmentation fault      PERL6LIB=lib ./perl6 $f


####### 1 mips t/02-rakudo/09-thread-id-after-await.t
1..1
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039
./looptests: line 9:  6980 Illegal instruction     PERL6LIB=lib ./perl6 $f


###### 26 s390x t/04-nativecall/05-arrays.t
1..41
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039


###### 25 s390x t/04-nativecall/05-arrays.t
1..41
Unhandled exception: Bytecode validation error at offset 0, instruction 0:
invalid extension opcode 40704 - should be less than 1039
