class Foo {
    multi method foo(Str:D $a) { say "Foo"; nextsame } 
} 
class Bar is Foo { 
    multi method foo(Any $v) { say "Bar" } 
}
Bar.new.foo("ok");
