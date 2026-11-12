     multi trait_mod:<is> ( Routine:D $routine, :$mine ) {
         say "\n=== ", $routine.name, " ===";
         say "TRAIT MULTI ", $routine.multi;
         say "TRAIT PROTO ", $routine.is_dispatcher;
         say "TRAIT CANDIDATES: ", $routine.candidates.elems;
         say "TRAIT SIGNATURE: ", $routine.signature.perl;
     }

     class Foo {
         proto method foo ( | ) is mine {*}
         multi method foo ( Str:D $s ) is mine { note "Str:$s" }
         multi method foo ( Int:D $i ) { note "Int:$i" }
     }

     proto bar ( | ) is mine {*}
     multi bar ( Str:D $s ) { ... }
     multi bar ( Int $i ) is mine { ... }

     say "\n=== MAIN ===";
     my $r = Foo.^find_method('foo');
     say "MAIN PROTO: ", $r.is_dispatcher;
     say "MAIN MULTI: ", $r.candidates».multi;
     say "MAIN CANDIDATES: ", $r.candidates.elems;
