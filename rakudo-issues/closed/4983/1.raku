class Zub {
	method a {
		say "a";
	}
	method b {
		say "b";
	}
}

role Buz {
	has Zub $.zub handles <a b> = Zub.new;
}

class Foo does Buz {

}

Foo.new.a;
