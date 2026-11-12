    put q:to/EOH/.lines.map: -> $code { $code ~ "\t" ~ $code.EVAL ~ "\n" };
        Int ~~ Int;
        Int:D ~~ Int:D;
        Int ~~ Str(Int);
        Int:D ~~ Str(Int:D);
        Int:D ~~ Str:D(Int); # lolwut!
        Str ~~ Str(Int);
        Str:D ~~ Str:D(Int);
        Str ~~ Cool;
        Str:D ~~ Cool:D;
    EOH
