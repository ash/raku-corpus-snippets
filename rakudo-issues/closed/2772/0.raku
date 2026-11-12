     unit module multi-method;
     no precompilation;

     class Foo is export {
         proto method foo (|) {*}
         multi method foo (Mu \o) { say "foo(Mu)" }
     }

     class Bar is Foo is export {
         multi method foo (Any \o) { say "foo(Any)" }
     }

     BEGIN {
         say "precomp.";
         Bar.new.foo(Str);
     }
