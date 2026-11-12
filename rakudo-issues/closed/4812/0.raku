#| Base class for magicians 
class Magician {
  has Int $.level;
  has Str @.spells;

  #| wave a wand in a particular direction
  sub wave(Complex $direction) { }

  #| cast a spell
  method cast(Int $s) {}
}
 
#| Fight mechanics 
sub duel(Magician $a, Magician $b) {
}
#= Magicians only, no mortals. 

dd $=pod;
