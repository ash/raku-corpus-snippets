my class Meow { has $.a; has $.b; method zzu { self.WHAT }; }
my Meow $x4 .=new;
$x4 andthen .=zzu orelse dd $_; # OUTPUT: Meow
