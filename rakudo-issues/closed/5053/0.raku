my @strings = ["a", "1.24", "3", "def", "45", "0.23"];
my Supply $supply = Supply.from-list(@strings);
my Supply $compact = $supply.map(-> $value {
  try { Num($value) }
  if $! { Empty } else { Num($value) }
 }); 

$compact.tap( &say);
