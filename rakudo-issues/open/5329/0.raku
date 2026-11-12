#!env raku

my %m = ("a" => 1, "b" => 2, "c" => 3);
subset X1 of Str() where { $_ (elem) %m };
subset X2 of Str() where * (elem) %m;
sub t1 (X1 $x) { $x.say }
sub t2 (X2 $x) { $x.say }

("a" .. "c").map({ t1($_); });
# If we uncomment below line, The bug won't be triggerd.
# ("a" .. "c").map({ t2($_); });

("a" .. "c").hyper(:batch(1), :degree(2)).map({ t1($_); });
("a" .. "c").hyper(:batch(1), :degree(2)).map({ t2($_); });
