my $cnt=0; $*ARGFILES.words.grep(/ {++$cnt}/); say $cnt;
