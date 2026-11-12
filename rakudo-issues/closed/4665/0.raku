use experimental :cached;

my $calls = 0;
sub pow2($a) is cached {
  $calls++;
  if ($a == 0) {1}
  else {pow2($a - 1) + pow2($a - 1)}
}

my $samewith-calls = 0;
sub pow2-samewith($a) is cached {
  $samewith-calls++;
  if ($a == 0) {1}
  else {samewith($a - 1) + samewith($a - 1)}
}

my $count-calls = 0;
sub count-to($a) is cached {
  $count-calls++;
  if ($a == 0) {1}
  else {samewith($a - 1) + 1}
}


say pow2(10);
say pow2(10);
say "pow2 calls:$calls";
say pow2-samewith(10);
say pow2-samewith(10);
say "pow2-samewith calls:$samewith-calls";
say count-to(1000);
say count-to(1000);
say "count-to calls:$count-calls";
