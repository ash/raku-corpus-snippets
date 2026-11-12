my $a = token { 'a' <?{ say self.pos }> 'a' }; 'xxxxxaa' ~~ $a;
my token b { 'b' <?{ say self.pos }> 'b' }; 'xxxxxbb' ~~ /<b>/;
