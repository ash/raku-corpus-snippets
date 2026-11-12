class Point {
    has int $.x;
    has int $.y;
    method !SET ($!x, $!y) {self}
    method new (:$x is raw, :$y is raw) { self.bless!SET: $x, $y }
}
my $total = 0;
for ^1_000_000 {
    my $p = Point.new: :2x, :3y;
    $total = $total + $p.x + $p.y;
}
say $total;
