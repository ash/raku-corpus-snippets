use experimental :cached;
sub foo($s) is cached { say "not cached: $s" }
foo(<1 2 3>.Set) for ^100;
