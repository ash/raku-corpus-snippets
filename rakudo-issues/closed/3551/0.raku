"a/b".IO(:SPEC(IO::Spec::Win32.new)) ~~ "a\\b".IO(:SPEC(IO::Spec::Win32.new))
