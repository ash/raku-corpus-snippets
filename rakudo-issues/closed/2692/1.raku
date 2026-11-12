class B {
    has uint8 $.i;
    method ii is rw {
        Proxy.new(FETCH => -> $ { my uint8 $ = $!i },
                  STORE => -> $, uint8 $_ { $!i = $_ });
    }
}

B.new.ii.Str; # dies with:
              # Cannot find method 'Str': no method cache and no .^find_method
