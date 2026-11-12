my @foo[2;2] = [['R','A'],['K','U']];
say @foo.grep( 'U', :k );
# Got (3), but expecting tuple (1,1)
