say "a".trans( /./ => { $/ } );  # a
say "a".trans( (/./ => { $/ },) );  # Use of Nil in string context
