my $line = '      media: Ethernet autoselect (1000baseT <full-duplex>)';
say $<media> if $line ~~ / ^ \s+ 'media: ' $<media> = [ <![\(]>+ ] $ /;
