sub foo(%s is Set) {  # compile time error, see output
    say %s.WHAT; 
}
