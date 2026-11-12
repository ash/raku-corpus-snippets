use v6.d;
sub infix:<eog> ( $a,  $b ) is assoc<chain> is pure { 
    so $a == $b+1 
}
say 5 eog 4 eog 3 eog 2 eog 1;
say ( (5 eog 4) and (4 eog 3) and (3 eog 2) and (2 eog 1) );
say [eog] 5,4,3,2,1
