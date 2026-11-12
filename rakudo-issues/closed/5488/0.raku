sub translate-lines ($line) {
  $line.trans([
    /<?after o>ne/,
    "two", 
    "three", 
    "four", 
    "five", 
    "six", 
    "seven", 
    /<?after e>ight/, 
    "nine"
  ] => [
    1, 2, 3, 4, 5, 6, 7, 8, 9
  ]);
}
