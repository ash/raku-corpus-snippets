     #!/usr/bin/env perl6
     use lib '.';
     use multi-method;

     BEGIN {
         say ".p6 BEGIN";
         Bar.new.foo(Str);
     };

     Foo.new.foo(Str);
     Bar.new.foo(Str);
