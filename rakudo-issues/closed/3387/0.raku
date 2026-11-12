use v6.d;
use Test;

subtest 'untyped parameters' => {
    my BagHash $foo;

    sub count($a,$b) {
        $foo{$a=>$b}+=1;
    }

    count('a','b');
    count('a','b');

    is-deeply(
        $foo.keys,
        @( 'a'=>'b' ),
        'should have 1 key',
    )
}

subtest 'typed parameters' => {
    my BagHash $foo;

    sub count(Str $a, Str $b) {
        $foo{$a=>$b}+=1;
    }

    count('a','b');
    count('a','b');

    is-deeply(
        $foo.keys,
        @( 'a'=>'b' ),
        'should have 1 key',
    )
}

done-testing;
