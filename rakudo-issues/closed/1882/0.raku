my $out = './x.out'.IO.open(:w);
my $p = run <<ls -la adfadsf>>, :out($out), :merge; 
$out.close; 
