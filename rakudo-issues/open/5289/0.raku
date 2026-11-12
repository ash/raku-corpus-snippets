    multi sub trait_mod:<is>(Routine \r, :$renamed) { r.candidates.say; r does role :: { method name { $renamed } } }

    proto sub foo(|) is renamed<foo-proto> { * }
    multi sub foo(Int $) { say &?ROUTINE.name }
    multi sub foo(Str $) is renamed<stringer> { say &?ROUTINE.name }
    multi sub foo(Failure) is renamed<failer> { fail('oi‽') }

    foo(42);
    foo('answer');
    # foo(Failure);
