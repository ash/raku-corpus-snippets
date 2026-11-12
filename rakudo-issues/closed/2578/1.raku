multi sub infix:<==>(Rational:D \a, Rational:D \b) {
    nqp::hllbool(
      nqp::isfalse(a.denominator) || nqp::isfalse(b.denominator)
        ?? nqp::iseq_I(a.numerator, b.numerator)
          && nqp::istrue(a.numerator) # NaN != NaN
        !! nqp::iseq_I(
            nqp::mul_I(a.numerator, b.denominator, Int),
            nqp::mul_I(b.numerator, a.denominator, Int)))
}
