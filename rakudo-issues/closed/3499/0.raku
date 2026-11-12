class Foo {
    proto method foo(|) {*}
    multi method foo(Str:D $s) { note "Foo Str:D"; nextsame }
    multi method foo(Any:D) { note "Foo Any:D"; nextsame }
}
class Bar is Foo {
    proto method foo(|) {*}
    multi method foo(Str $s) { note "Bar Str"; nextsame }
    multi method foo(Any) { note "Bar Any"; nextsame }
}
Bar.new.foo("foo");
