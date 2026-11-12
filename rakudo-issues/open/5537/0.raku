say 'version: ', $*RAKU.version;            # v6.d

class Quadruped { has $.legs = 4; }
class Rat is Quadruped { has $.head = 1 }

# class Rat is Quadruped {}     These variations have parallel behavior.
# class Rat { has $.head = 1}

my $num = 1.1;                                                             
say '$num.raku: ', $num.raku;               # 1.1                               
say '$num.WHAT: ', $num.WHAT;               # (Rat)                             
                                                                                
my $rat = Rat.new();                                                            
say '$rat.WHAT:  ', $rat.WHAT;              # (Rat)                             
say '$rat.^parents:     ', $rat.^parents;   # ((Quadruped))·                    
                                                                                
my Rat $r = 2.2;                            #  see below                         
# Type check failed in assignment to $r; expected Rat but got Rat (2.2)         
# in block <unit> at c.raku line 18
