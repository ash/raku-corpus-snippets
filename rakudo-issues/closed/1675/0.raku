
 my $start = now; 
 say ((0..1).roll xx 100000).sum; 
 say now - $start;
 $start =  now; 
 say (Bool.roll xx 100000).sum; 
 say now - $start;
 
