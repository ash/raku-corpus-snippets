    method list-attrs() {
        my $o = self;
        my $c = ::($o.^name);
        $c.^attributes.map: -> $a {
            say "{$a.name} { $a.?readonly // False ?? 'ro' !! 'rw' } "
                ~"{$a.?container.^name } "
    #           ~ "{$a.get_value( $o) } "
        }
    }
