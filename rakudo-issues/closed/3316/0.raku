subtest 'conditional expressions' => { plan 2;
    subtest '(?(condition)yes-pattern|no-pattern)' => { plan 4;
        ok !("AC" ~~ rx:P5/(?:A|(B))(?(1)C|D)/), 'Conditional no-pattern is used, causing match to fail.';
        ok "AD" ~~ rx:P5/(?:A|(B))(?(1)C|D)/, 'Conditional no-pattern works.';
        #?rakudo 2 todo "P5 regex conditionals not working"
        ok "BC" ~~ rx:P5/(?:A|(B))(?(1)C|D)/, 'Conditional yes-pattern works.';
        ok !("BD" ~~ rx:P5/(?:A|(B))(?(1)C|D)/), 'Conditional yes-pattern is used, causing match to fail.';
    }

    subtest '(?(condition)yes-pattern)' => { plan 2;
        ok !("B" ~~ rx:P5/(B)?(?(1)C)/), 'Conditional without no-pattern works, causing match to fail.';
        #?rakudo todo "P5 regex conditionals not working"
        ok "BC" ~~ rx:P5/(B)?(?(1)C)/, 'Conditional without no-pattern works.';
    }
}
