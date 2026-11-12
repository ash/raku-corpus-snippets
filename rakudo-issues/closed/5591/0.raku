#!/usr/bin/raku

#

sub     compare-signatures($name, $expectation, $sig1, $sig2, $problem) {
        say "$name";
        say "\tExpectation: $expectation";
        say "\tsig1.ACCEPTS(sig2): {$sig1.ACCEPTS($sig2)}";
#       if $sig1.ACCEPTS($sig2).Str eq $expectation { return; }
        say "\tStraight comparison";
        say "\t\tsig1: {$sig1.raku}";
        say "\t\tsig2: {$sig2.raku}";
        say "\tarity: {$sig1.arity} vs. {$sig2.arity}";
        say "\tcount: {$sig1.count} vs. {$sig2.count}";
        say "\treturns.WHICH: {$sig1.returns.WHICH} vs. {$sig2.returns.WHICH} = {$sig1.returns =:= $sig2.returns}";
        say "\treturns.raku: {$sig1.returns.raku} vs. {$sig2.returns.raku} = {$sig1.returns =:= $sig2.returns}";
        if $problem {
                say "\tProblem: $problem";
        }
        say '';
}

class   A {
        method  foo(Str $a, Int $b) {}
}

my $class_a = A.new();

# Signatures material
my $signature-method = A.^lookup('foo').signature;

my @signature-tests;

@signature-tests.push: [
        1,
        'False',
        :(Str $a, Int $b, *%_),
];
@signature-tests.push: [
        2,
        'True',
        :(A: Str $a, Int $b, *%_)
];
@signature-tests.push: [
        3,
        'True',
        Signature.new(
                params => (
                        Parameter.new(
                                type => 'A',
                                invocant => True,
                        ),
                        Parameter.new(
                                name => '$a',
                                type => 'Str',
                        ),
                        Parameter.new(
                                name => '$b',
                                type => 'Int',
                        ),
                        Parameter.new(
                                name => '*%_',
                        ),
                ),
        ),
        'Arity and count should sort themselves out a little better, but not a big problem',
];
@signature-tests.push: [
        4,
        'True',
        Signature.new(
                params => (
                        Parameter.new(
                                type => 'A',
                                invocant => True,
                        ),
                        Parameter.new(
                                name => '$a',
                                type => 'Str',
                        ),
                        Parameter.new(
                                name => '$b',
                                type => 'Int',
                        ),
                        Parameter.new(
                                name => '*%_',
                        ),
                ),
                count => 3.Num,
        ),
        'Arity should max out at count, but not a big problem',
];
@signature-tests.push: [
        5,
        'True',
        Signature.new(
                params => (
                        Parameter.new(
                                type => 'A',
                                invocant => True,
                        ),
                        Parameter.new(
                                name => '$a',
                                type => 'Str',
                        ),
                        Parameter.new(
                                name => '$b',
                                type => 'Int',
                        ),
                        Parameter.new(
                                name => '*%_',
                        ),
                ),
                count => 3.Num,
                arity => 3,
        ),
        "Return value defaults to Mu, like the method, but since they're different Mus, this fails when it should pass",
];
@signature-tests.push: [
        6,
        'True',
        Signature.new(
                params => (
                        Parameter.new(
                                type => 'A',
                                invocant => True,
                        ),
                        Parameter.new(
                                name => '$a',
                                type => 'Str',
                        ),
                        Parameter.new(
                                name => '$b',
                                type => 'Int',
                        ),
                        Parameter.new(
                                name => '*%_',
                        ),
                ),
                count => 3.Num,
                arity => 3,
                returns => Nil,
        ),
        "Return value of Nil doesn't help either",
];

for @signature-tests -> $test {
        my ($count, $expected, $signature-test, $problem) = @$test;
        compare-signatures("signature-method and signature test $count", $expected, $signature-method, $signature-test, $problem);
}
