my $dt = DateTime('2020-12-31T22:30:00')
say $dt.later(:1hour, :30minutes);
# OUTPUT: 2021-01-01T00:00:00Z
