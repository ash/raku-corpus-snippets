 my @list = (1, 2, 3);
 my $seq1 = @list.sort;  # produce a Seq object
 my $seq2 = @list.sort;  # produce a Seq object
 say $seq1 ~~ $seq2;     # outputs False, not as expected
