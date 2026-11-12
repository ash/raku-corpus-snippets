my $s = Supplier.new; react { whenever $s.Supply.head { .say }; $s.emit(42); }
