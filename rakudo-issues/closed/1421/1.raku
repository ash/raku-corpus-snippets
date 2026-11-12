use v6;

sub sieve($n) {
  my @composite;
  my $t;
  loop ($t = 3;  $t*$t <= $n;  $t += 2) {
     if (!@composite[$t]) {
        loop (my $s = $t*$t;  $s <= $n;  $s += $t*2)
           { @composite[$s]++ }
     }
  }
  my @primes = (2);
  loop ($t = 3;  $t <= $n;  $t = $t + 2) { 
     @composite[$t] || push @primes, $t;
  }
  @primes;
}

my $N = 5000000;
my $start = time;
my @primes = sieve($N);
my $end = time;

print @primes[*-1], "\n";
printf "%.2fs\n", $end - $start;
