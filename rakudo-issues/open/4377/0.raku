class Point does ValueType {
    has $.x = 0;
    has $.y = 0;
}

my $a = Point.new( x => 1, y => 2 );
$a === Point;

my $b = $a.clone( x => 20 );

$a === $b; # True, but should be False as 1 ≠ 20
