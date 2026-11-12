use nqp; class Foo { has $.bar; method z { $!bar } }; dd nqp::iscont(Foo.new.z)
