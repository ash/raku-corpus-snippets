method sum() is nodal {
    my ($start,$stop) = self.int-bounds || nextsame;
    my $elems = 0 max $stop - $start + 1;
    ($start + $stop) * $elems div 2;
}
