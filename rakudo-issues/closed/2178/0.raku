     class Foo {
         has Int $.attr is rw;

         method m {
             say "<this is Foo:m>";
             callsame;
         }
     }

     class Bar is Foo {
         method m {
             say "<this is Bar::m>";
             callsame;
         }
     }

     class Baz is Bar {
         method m {
             say "<this is Baz::m>";
             callsame;
         }
     }

     Baz.^lookup( 'm' ).wrap( method { say "<this is WRAPPER:m>"; nextsame } );

     my $inst = Baz.new;

     $inst.m;
