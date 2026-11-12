use nqp; class Foo { has $.bar; method z is rw { $!bar } }; dd nqp::iscont(Foo.new.z)
