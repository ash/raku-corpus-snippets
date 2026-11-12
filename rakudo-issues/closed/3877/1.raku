my $s = Supplier.new; react { whenever $s.Supply.head(1) { .say }; $s.emit(42); }
