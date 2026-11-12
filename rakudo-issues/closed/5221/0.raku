multi sub infix:<||=>($a, $b) is equiv(&infix:<+=>) { $a || $b }
 
my $foo = 0;
$foo ||= 1;
say $foo; # OUTPUT: 1 
