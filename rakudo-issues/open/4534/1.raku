say [:key<keyval> => "val", :key<named>].Capture.raku; # \(:key("named"), "key\tkeyval" => "val")
my %h{Any} = (foo => 1, :bar<baz> => 2);
say %h.Capture.raku; # \("bar\tbaz" => 2, :foo(1))
