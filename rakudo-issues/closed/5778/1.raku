class C {
	has Int $!i;
	submethod BUILD ( Int :$!i ) { }
	method new ( Int $i ) { self.bless: :$i }
	method ACCEPTS ( $topic ) {
		$topic == $!i;
	}
}
my C @cs = C.new(1), C.new(2), C.new(3);
my Int $i = 2;
say ( $i <<~~<< @cs ).raku;
