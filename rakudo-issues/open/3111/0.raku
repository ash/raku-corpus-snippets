sub s() {};
given ‘abc’ -> $_ is copy { say s/b/d/ }
