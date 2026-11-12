class C { method Bool {dd; True } }

# Correctly short circuits; no output
True  || die;
False && die;
True  || C.Bool;
False && C.Bool;

# Incorrectly runs the Bool method on the RHS
True  || ?C;
True  || so C;
True  || !C;
True  || not C;
False && ?C;
False && so C;
False && !C;
False && not C;
