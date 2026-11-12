role Iface {
    method x {...}
    method y {...}
}

class C does Iface {
    method x {42};
    has $.y;
}

C.new;
