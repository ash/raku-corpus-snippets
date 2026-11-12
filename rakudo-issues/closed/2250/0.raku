     role FooRole {
         submethod a {
             "this is FooRole::a";
         }
     }

     role BarRole does FooRole {
         submethod a {
             note "this is BarRole::a";
         }
     }

     class Foo does BarRole {
         submethod a {
             "class::a";
         }
     }
