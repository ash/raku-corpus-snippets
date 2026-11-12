package Foo { class Bar::Baz { } }
say "Foo::Bar      => ", (try Foo::Bar.^name) // 'FAIL';
say "Foo::Bar::Baz => ", (try Foo::Bar::Baz.^name) // 'FAIL';
