# This is suboptimal as it will continue to iterate the Seq
# until it is fully consumed
sub Supply-from-Seq ( Seq:D $sequence --> Supply:D ) {
  my $supplier = Supplier.new;
  start {
    $sequence.map: { $supplier.emit($_) }
    $supplier.done();
  }
  $supplier.Supply;
}

…

whenever Supply-from-Seq($seq) {
  LAST done;
  say "$_ Seq";
}
