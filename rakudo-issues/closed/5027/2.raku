use v6;
my  Map \labels = reduce(
                -> Map \labels_, Int \token_ {
                    if
                        labels_{token_}:exists
                    {
                        labels_
                    } else {
                        Map.new(labels_.list,Pair.new(token_,token_))
                    }
                },
                Map.new,
                |(1 .. 10)
            );
say labels.raku;
