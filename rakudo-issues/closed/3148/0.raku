sub a() { say Backtrace.new.list.elems; a() }; a()
