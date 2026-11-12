use Test;

my %calls;
sub infix:<==⨧>($a,$b) { my $ans = so $a == $b + 2; push %calls<plain>, "$a ==⨧ $b→$ans"; $ans }
sub infix:<is-eq⨧>($a,$b) is equiv(&infix:<==>) { my $ans = so $a == $b + 2; push %calls<is-eq⨧>, "$a ==⨧ $b→$ans"; $ans }

ok(!(6 ==⨧ 4 ==⨧ 2), "Custom operator doesn't chain");
ok(!(6 is-eq⨧ 4 is-eq⨧ 2), "Custom operator with precedence same as == still doesn't chain");
is-deeply(%calls<plain>,%calls<is-eq⨧>,"Both are called the same");
