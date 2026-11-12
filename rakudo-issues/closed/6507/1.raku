use nqp;
sub orphan($name, \who) {
    my $sc := nqp::getobjsc(who);
    return False if nqp::isnull($sc);
    my $ok = False;
    try $ok = nqp::eqaddr(nqp::scgetobj($sc, nqp::scgetobjidx($sc, who)), who);
    !$ok
}
say orphan('array', array::); # True
say orphan('Hash', Hash::); # False
