   use v6;

   # capturedReturns.pl6  Topher Cooper
   # Demonstration of type capture returns check bug/infelicity.

   sub binder(::T $x --> T)
   {
       say "Binder({T.^name} {$x}) called.";
       return $x;
   }

   say "Calling binder(18).";
   say binder(18).perl;
   CATCH
   {
       default
       {
           put $_.^name, ': ', $_.Str;
           put "    value = {$_.got().gist},";
           put "    expected an object of type = {$_.expected().^name}.";
       }
   };
