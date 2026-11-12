class A { method sink(-->Nil) { say $*ABC } }
sub sss(&block) { my $*ABC = 123; block() }
#{ my $*ABC = 123; A.new }   # 123
sss { A.new }                # $*ABC not found
