sub f         ($x, $y) is assoc<right> { $x - $y }
sub infix:<§> ($x, $y) is assoc<right> { $x - $y }

say [-]    1,2,3;  # -4 (= (1 - 2) - 3), because &infix:<->.prec<assoc> eq 'left'
say [§]    1,2,3;  #  2 (= 1 - (2 - 3)), correct
say [[&f]] 1,2,3;  # -4, which is the problem
