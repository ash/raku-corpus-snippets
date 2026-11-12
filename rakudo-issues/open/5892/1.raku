await Promise.broken(X::AdHoc.new(payload => ":(")).orelse({ say $^p.cause; 42 })
