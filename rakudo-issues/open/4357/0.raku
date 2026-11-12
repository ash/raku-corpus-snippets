use nqp;

my $path = $*TMPDIR;
my $child = "../\x[308]";

say nqp::if(
        nqp::istype((my $kid := $path.child($child).resolve: :completely),
                Failure),
        $kid, # we failed to resolve the kid, return the Failure
        nqp::if(
                nqp::istype((my $res-self := $path.resolve: :completely), Failure),
                $res-self, # failed to resolve invocant, return the Failure
                nqp::if(
                        nqp::iseq_s(
                                ($_ := nqp::concat($res-self.absolute, $path.SPEC.dir-sep)),
                                nqp::substr($kid.absolute, 0, nqp::chars($_))),
                        $kid, # kid appears to be kid-proper; return it. Otherwise fail
                        fail "Too bad")));
