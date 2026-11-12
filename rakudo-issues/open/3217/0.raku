grammar Foo {
	token TOP { <identifier> }
	regex identifier { <!before <keyword>> \w+ }
	regex keyword { 'foo' }
}

class Foo::Action {
	method FALLBACK ($name, $/) { say "$name => $/" }
}

say Foo.parse("foo", actions => Foo::Action);
