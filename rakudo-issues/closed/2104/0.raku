constant SOL_SOCKET = 0xFFFF;

enum Option (
   SO_DEBUG => 0x0001, 
   # ...
);

# ...

proto method option(Option, Int $?) {*}
multi method option(Option \opt --> Int) {
    my int \ret := nqp::getsockopt(nqp::unbox_i(self.native-descriptor), nqp::unbox_i(SOL_SOCKET), opt);
    nqp::box_i(ret, Int)
}
multi method option(Option \opt, Int \val --> Int) {
    my int \ret := nqp::setsockopt(nqp::unbox_i(self.native-descriptor), nqp::unbox_i(SOL_SOCKET), opt, val);
    nqp::box_i(ret, Int)
}
