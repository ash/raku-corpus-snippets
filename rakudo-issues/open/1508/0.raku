my class Meow { has $.a; has $.b; method zzu { self.WHAT }; }
my Meow $x4 .=new;
$x4 andthen .=new andthen dd $_;
# OUTPUT: Meow $x4 = Meow.new(a => Any, b => Any)
