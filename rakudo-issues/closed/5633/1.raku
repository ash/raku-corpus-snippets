=begin code :allow< V B > :lang<raku>
    use JSON::Fast;
    my %h = from-json( B<$=finish> );
    say %h.raku;
    # more lines of code

    B<V<=>finish
    { "key1": "a string value", "key2": "another value" }>
=end code
