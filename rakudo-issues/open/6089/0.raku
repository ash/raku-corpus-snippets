sub EXPORT() { 
  sub infix:<_> (Cool $a, Cool $b) is equiv(&infix:<~>) is assoc('left') {
    $a ~ " " ~ $b
  }
  # say &infix:<_>.associative;
  Map.new: '&infix:<_>' => &infix:<_>,
}
