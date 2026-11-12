class {
    has $.foo is rw := Proxee.new: :BIND{ $_² }
}.new(:11foo).foo.say
