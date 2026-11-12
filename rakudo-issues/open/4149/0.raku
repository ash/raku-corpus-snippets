$foo::bar = 33; say foo::.^name; # OUTPUT: «===SORRY!=== Error while compiling <tmp>␤Undeclared routine:␤    foo used at line 1␤␤»  
$FOO::bar = 33; say FOO::.^name; #  OUTPUT: «===SORRY!=== Error while compiling <tmp>␤Undeclared name:␤    FOO used at line 1␤␤»       
