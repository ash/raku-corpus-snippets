say (3, 1, 2).kv.first(-> $k, $v { $v == $k });
# STDERR: Too few positionals passed; expected 2 arguments but got 1
