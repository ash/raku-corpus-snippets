say (3, 1, 2).kv.grep(-> $k, $v { $v == $k })[0];
# OUTPUT: (1 1)
