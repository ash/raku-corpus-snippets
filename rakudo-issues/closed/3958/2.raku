sub term:<now>(--> Instant:D) {
    nqp::p6bindattrinvres(nqp::create(Instant),Instant,'$!tai',
      Rakudo::Internals.tai-from-posix(nqp::time_n,0).Rat)
}
