constant auth = "Þor"; class Foo:auth{auth} {}; say Foo.^auth
# OUTPUT: «-> ;; $_? is raw = OUTER::<$_> { #`(Block|68336832) ... }␤»
