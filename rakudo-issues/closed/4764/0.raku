sub getAllDepth ($tag, $nth, $search, @ret, $OFF, $min, $nrev) {
	my (@nd, $offset,	$offs);
	my @curNode= ([$OFF, $search],);
	while @curNode {
		for @curNode -> $OffNode {
			if $nrev {
				my $i=1;	$OffNode[1] ~~ /^<HEAD> [ <C> [ \<$tag>>.+ & <ND> ] { ++$i } ]+/;	
				return 1 if ($nth=$i-$nth) < 1}
			$OffNode[1] ~~ /^(<HEAD>) { $offset=$0 }
			[ [ (<A>) { $offs=($offset~=$1) }
			[ <!before \<$tag>> > (<N>)
			{ push @nd, ($OffNode[0]~$offset, $2) if $MAX > $min;	$offset~=$2; } ]? ]*
###########################################
			[ \<$tag>>.+ & (<N>) ]
			{ push @nd, ($OffNode[0]~$offs, $3) if $MAX > $min; $offset=$offs~$3 }
			] **{$nth}
			{ push @ret, ($OffNode[0]~$offs, $3) if $MAX >= $min }
			[ (<A>) { $offset~=$4 }
			(<N>) { push @nd, ($OffNode[0]~$offset, $5) if $MAX > $min; $offset~=$5 } ]* /
		}
		@curNode=@nd; @nd=();
	}
	return !@ret
}
