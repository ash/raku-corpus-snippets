use v6;
my ( Map \labels,\_) = reduce(
                -> List \acc_, Int \token_ {
                    my ( Map \labels_,  Int \prev_token_ ) = acc_;
                    my Map \dummy_for_test = Map.new(labels_.list); 
                    if dummy_for_test{prev_token_}:exists
                    {
                        [labels_,token_]
                    } else {
                        [Map.new(labels_.list,Pair.new(token_,token_)),token_]
                    }
                },
                [Map.new,0],
                |(1 .. 10)
            );
say labels.raku;
