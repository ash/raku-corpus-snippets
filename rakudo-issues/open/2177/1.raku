sub a($x) { say $x; $x < 5 };
say [&&] a(2), a(3), a(8), a(1) # OUTPUT: «2␤3␤8␤False␤»
