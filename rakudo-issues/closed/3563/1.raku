class Foo { method foo { "foo" } }; Foo.^lookup("foo").wrap(-> \SELF, | { "bar" }); Foo.new.foo.say
