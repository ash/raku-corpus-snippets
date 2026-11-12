sub MAIN () {
  loop {
    state $n = 0;
    put $n++;
    last if $n > 2;
    LAST { put $n }
  }
}
