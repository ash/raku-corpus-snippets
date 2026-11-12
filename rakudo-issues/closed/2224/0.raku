sub foo() { ^2 .race.map({ $_ }) }; loop { die unless foo().Slip }
