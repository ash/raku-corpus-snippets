my ($f, $f-next) := (0, 1);

($f, $f-next) := ($f-next, $f + $f-next);

say $f, $f-next;
