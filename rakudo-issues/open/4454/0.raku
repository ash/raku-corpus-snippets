multi sub infix:<~^>(Str:D \a, Str:D \b --> Str:D) {
    nqp::p6box_s(nqp::bitxor_s(nqp::unbox_s(a), nqp::unbox_s(b)))
}
multi sub infix:<~^>(str $a, str $b --> str) { nqp::bitxor_s($a, $b) }
