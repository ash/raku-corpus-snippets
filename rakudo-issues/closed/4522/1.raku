class Foo { has ($.a is rw is required is totally-made-up) }
say  Foo.new;  # OUTPUT «Foo.new(a => Any)»
