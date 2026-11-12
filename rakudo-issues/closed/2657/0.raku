     role R1 {
         method foo { "R1::foo" }
     }

     class Foo does R1 {
         method foo {
             note "Foo::foo";
             say "direct:   ", self.R1::foo;
         }
     }

     class Bar is Foo {
     }

     say "--- Foo:";
     Foo.new.foo;
     say "--- Bar:";
     Bar.new.foo;
