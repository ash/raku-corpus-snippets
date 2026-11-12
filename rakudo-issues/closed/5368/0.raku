#!/usr/bin/env raku

my $lock-file = "file.lock";

my $fh = $lock-file.IO.open: :w;
$fh.lock;
say qqx{lsof $lock-file}; # Here we got the W flag enabled
'file.lock'.IO.open(:r).close;
say qqx{lsof $lock-file}; # W flag is missing

$fh.unlock;
$fh.close;
