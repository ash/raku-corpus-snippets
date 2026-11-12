my constant @GOOD-VALUES = <these are acceptable values>;
sub check-param($val --> True ) {
    for  @GOOD-VALUES -> $check-val {
        return if $val.Str eq $check-val;
    }
    die 'Not an accepted value';
}

class A {
	has $.val is required where check-param($_);
}

my $a = A.new(val => 'acceptable');
