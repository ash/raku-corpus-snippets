my $*FOO = 42;
await start {
    dd $*FOO; # Int $*FOO = 42
    await start { dd $*FOO } # Failure.new(exception => X::Dynamic::NotFound.new(name => "\$*FOO"), backtrace => Backtrace.new)
}
