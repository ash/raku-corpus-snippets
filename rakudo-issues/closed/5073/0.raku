use v6.d;
use Test;
plan 3;

sub infix:<abc>( $a, $b) { $a ~ $b ~ 'c' }
is 'A' abc 'B', 'ABc';
#===SORRY!=== Error while compiling:
#Two terms in a row
#------> is 'A'⏏ abc 'B', 'ABc';
sub infix:<%!@*>( $a, $b) { "$a curses $b" }
is 'A' %!@* 'B', 'A curses B';
#Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏A' (indicated by ⏏)

sub infix:<=====>( $a, $b) { "$a ===== $b" }
is 'A' ===== 'B', 'A ===== B';                                                
# ===SORRY!=== Error while compiling:
#Cannot make assignment out of === because chaining operators are too diffy   
#------> ====⏏= 
