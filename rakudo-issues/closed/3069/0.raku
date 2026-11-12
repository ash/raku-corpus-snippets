my $fmt =  { sprintf "%04d%02d%02d", .year, .month, .day };
.say for (Date.new('2019-05-01', formatter => $fmt) .. Date.new('2019-05-31', formatter => $fmt));
