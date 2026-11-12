    method from-posix-nanos(Instant:U: Int:D $nanos --> Instant:D) {
        nqp::p6bindattrinvres(nqp::create(Instant),Instant,'$!tai',
          (Rakudo::Internals.tai-from-posix($nanos/10**9,0) * 10**9).Int)
    }
