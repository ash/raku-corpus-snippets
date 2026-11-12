sub this_is_void() is native("./libvoid.so") { * };

my $ret = this_is_void();
say $ret;
