use nqp;

my $then = now;
my int $rounds = 10000000;

my num $x  = 1e0;
my num $pi = 1e0;
my num $w;
my num $y;
#my int $y;

loop (my int $i = 2; $i <= $rounds; $i++) {
    $x = $x * -1e0;
    $y = 2 * $i - 1;
    $w = $x / $y;
#    $w = nqp::div_n($x,$y);
    $pi = $pi + $w;
}

say $pi * 4;
say now - $then;
