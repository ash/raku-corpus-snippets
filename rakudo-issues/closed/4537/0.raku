sub named(:&fn)                       { 'ok ' }
sub constrained(&fn:(Int))            { 'ok ' }
sub named-and-constrained(:&fn:(Int)) { 'ok ' }
sub fn(Int) {}
say named(:&fn), constrained(&fn), named-and-constrained(:&fn);
# OUTPUT: «ok ok ok»
