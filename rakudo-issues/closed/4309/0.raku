    "1234a--------" ~~ m/
        ^^
        (\N**{8})
        {say 'prefix=' ~ $0}
        'a'
        {say 'found'}
    /;
