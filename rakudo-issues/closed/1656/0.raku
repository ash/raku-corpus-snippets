sub foo() { sleep 1; take 42; take 50 };
say <a b c>.hyper(:1batch, :4degree).map({(gather foo).list});
say now - BEGIN now
