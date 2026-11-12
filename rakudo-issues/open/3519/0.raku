sub foo(*%foo) { }; given &foo.signature.params[0] { say .named; say .slurpy }
