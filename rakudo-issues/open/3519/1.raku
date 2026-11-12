sub foo(*@foo) { }; given &foo.signature.params[0] { say .positional; say .slurpy }
