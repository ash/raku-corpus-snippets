sub f(--> Nil) { say "{1}"; }
sub g(--> 2) { say "{1}"; }
sub h { say "{1}"; }
f; # OUTPUT: «Use of Nil in string context␤␤  in sub f at <tmp> line 1␤»
g; # OUTPUT: «2␤»
h; # OUTPUT: «1␤»
