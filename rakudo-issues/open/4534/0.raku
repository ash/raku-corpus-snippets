say [:key<keyval> => "val", :key<named>].Capture.raku; # \((:key("keyval")) => "val", :key("named"))
my %h{Any} = (foo => 1, :bar<baz> => 2);
say %h.Capture.raku; # \((:bar("baz")) => 2, :foo(1))
