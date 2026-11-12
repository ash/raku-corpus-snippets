multi sub infix:<Z>(+lol --> Seq:D) {
    Seq.new(Rakudo::Iterator.ZipIterables(lol))
}
