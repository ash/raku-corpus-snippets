     #no precompilation;
     unit module stateA;

     multi trait_mod:<is> ( Attribute:D $attr, :$foo ) is export {

         state Bool $touched = False;

         note "Applying";

         unless $touched {
             $touched = True;
             say "TOUCHED";
         }
     }
