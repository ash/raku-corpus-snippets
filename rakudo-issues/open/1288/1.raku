class {
    has $.foo is rw;
    submethod TWEAK (:$foo) {
        my $store;
        ($!foo := Proxy.new: :STORE{ $store = @_[1]² }, :FETCH{ $store }) = $foo
    }
}.new(:11foo).foo.say

# 121
