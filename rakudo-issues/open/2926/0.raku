my @inputs= [1,2,2,6];

#MAP 
say @inputs.map({
	state $prev=$_;
	state  $r=1;
	NEXT { $prev=$_};	
	$r= ($prev !== $_) ?? $r+1 !! $r;
	say $r;
	$r;
});
