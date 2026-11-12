sub f(--> Nil) { say "{1}"; }
sub g(--> 2) { say "{1}"; }
sub h { say "{1}"; }
f; # OUTPUT: «1␤»
g; # OUTPUT: «1␤»
h; # OUTPUT: «1␤»
