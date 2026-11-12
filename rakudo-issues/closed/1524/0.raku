my $c = class C {has Int $.a handles * = 3}.new; say $c.is-prime; $c does role :: {}; $c.is-prime
