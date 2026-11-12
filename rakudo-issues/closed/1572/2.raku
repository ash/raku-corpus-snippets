use nqp; class Foo { has $.bar; method z { my $bar } }; dd nqp::iscont(Foo.new.z)
