class Foo {
    method m { say "Foo" }
}
class Bar is hidden is Foo {
    method m { say "Bar"; nextsame }
}
Bar.new.m;
