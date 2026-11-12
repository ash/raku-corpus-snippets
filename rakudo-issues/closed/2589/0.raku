class A is repr('CStruct') { 
   has Str $.s is rw; 
}
my $a = A.new( s => 'Hello' );
