     my module Foo {
         role B[$p] is export { }
         role B { }
     }

     import Foo;

     say B.HOW.^name;      # Perl6::Metamodel::ParametricRoleHOW
     say Foo::B.HOW.^name; # Perl6::Metamodel::ParametricRoleGroupHOW

     class C1 does Foo::B { } # ok
     class C2 does B[42] { }  # ok
     class C3 does B { }      # Could not instantiate role 'Foo::B'
