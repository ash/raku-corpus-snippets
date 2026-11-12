my %expressions = D => "got D",
                  M => "got M",
                  l => "got l";

react {
	whenever Supply.interval(1) {
		say "%D %M %l".subst(/'%'$<specifier>=<{ %expressions.keys.join('|') }>/, -> ( :$specifier ) { %expressions{$specifier} }, :g);
	}
}
