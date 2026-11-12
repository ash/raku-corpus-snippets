proto sub foo ($) {*}; multi sub foo(Mu $a) { say "hi" }; foo(Mu)
