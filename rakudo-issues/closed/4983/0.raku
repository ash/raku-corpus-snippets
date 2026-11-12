class Zub {
	method a {
		say "a";
	}
	method b {
		say "b";
	}
}

role Buz {
	has Zub $.zub;

	method zub(--> Zub)  handles <a b> {
		$!zub //= Zub.new;
	}
}

class Foo does Buz {

}

Foo.new.a;
