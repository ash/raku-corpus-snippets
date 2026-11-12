my \w = lines.race.map(*.words.cache).sort(+*.head).hyper.map(|*.skip: 2);
my %p.=classify-list: *.value, w.hyper.pairs, :as(*.key);
say ~ w[|.value>>.succ] for %p.race.grep: { .value > 2 && [==] (.value<> Z- .value.skip) };
