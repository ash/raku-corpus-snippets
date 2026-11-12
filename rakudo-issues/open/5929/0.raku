sub bla(Capture (:%hash, :@list, |)) {
    %( :%hash, :@list )
}
say bla \(1, 2, :a, :42b)
