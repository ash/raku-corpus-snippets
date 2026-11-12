#!/usr/bin/env raku
sub MAIN ()
{
    if "Hello World" ~~ /:i
           |NoMatch
           /
   {
       say "With adverb: matches :(";
   }
   else
   {
       say "With adverb: doesn't match :)"
   }
    if "Hello World" ~~ /
           |NoMatch
           /
   {
       say "Without adverb: matches :(";
   }
   else
   {
       say "Without adverb: doesn't match :)"
   }
}
