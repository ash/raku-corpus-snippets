my %add = :42foo, :70bar, :10ber; say qq|%add.sort».map(*.fmt("%s %s"))|
