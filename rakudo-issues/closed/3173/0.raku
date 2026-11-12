use NativeCall;

class Nested is repr("CUnion") {
	has int32 $.int;
	has num32 $.num;
}
class Outer is repr("CStruct") {
	HAS Nested $.nested;
}

my $outer = Outer.new(nested => Nested.new(int => 7));
# fails with 'assign requires a concrete object (got a Nested type object instead)'

my $outer = Outer.new;
$outer.nested.int = 7;
# fails with 'Cannot look up attributes in a Nested type object'
