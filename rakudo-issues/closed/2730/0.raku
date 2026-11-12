    multi sub to-json(Exception:D $ex, :$indent = 0; :$first = 0) {
       to-json( $ex.^name => Hash.new(
          (message => $ex.?message),
          $ex.^attributes.grep(*.has_accessor).map: {
              with .name.substr(2) -> $attr {
                  $attr => (
                    (.defined and not $_ ~~ Real|Positional|Associative)
                      ?? .Str !! $_
                  ) given $ex."$attr"()
              }
          }
          ), :$indent, :$first )
    }
