class A {
	method f {
		ENTER {say "IN f"}
		LEAVE {say "OUT f"}
		say "EXECUTE f";
	}
}

A.new().f;
