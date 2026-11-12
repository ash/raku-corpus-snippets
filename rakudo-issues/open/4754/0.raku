sub foo ($n) {
  loop {
      state %seen;
      %seen.say if %seen;
      return if %seen{$n}++;
  }
}
.&foo for <1 2 1>;
