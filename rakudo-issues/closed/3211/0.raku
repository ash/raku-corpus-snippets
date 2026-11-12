use Test;

sub t ($title, :$got, :$current, :$expected) {
	is-deeply $got.sort({$^a.keys[0]cmp$^b.keys[0]}).Array,$current,$title;
	# is-deeply $got, $expected, $title;
}

t "in list context hash literal with one Pair",
	got      => [ %( a => 1 ) ],
	current  => Array.new(Pair.new(<a>,1)),
	expected => Array.new(Hash.new(<a>,1)),
;

t "in list context hash literal with list of one Pair",
	got      => [ %( (a => 1) ) ],
	current  => Array.new(Hash.new(<a>,1)),
	expected => Array.new(Hash.new(<a>,1)),
;

t "in list context hash literal with list of multiple Pairs",
	got      => [ %( (a => 1, b => 2) ) ],
	# actually hashes are in random order
	current  => Array.new(Pair.new(<a>,1),Pair.new(<b>,2)),
	expected => Array.new(Hash.new(<a>,1,<b>,2)),
;

done-testing;
