loop { my @ = (^20000).race.grep(*.self); print "." }
