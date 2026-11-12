module foo {
    our sub bar() { say "foo::bar" }
}

my &bar = ::foo::("&bar");
bar();
