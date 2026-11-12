say "ab".index(<a ab>);  # does print 0, as it should
say "ab".index(<ab b>);  # does print 0, as it should
say "ab".index(<b ab>);  # should also print 0, but prints 1

say "abc".index(<ab bc>);  # does print 0, as it should
say "abc".index(<bc ab>);  # should also print 0, but prints 1
