my @keywords = < this that>;
my $re = / @keywords /;
dd "this is fun" ~~ $re;
dd "what is fun" ~~ $re;
@keywords.push: 'what';
dd "what is fun" ~~ $re;
