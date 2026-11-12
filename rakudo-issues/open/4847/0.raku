if "/etc/os-release".IO andthen .f && .r {
  say "1";
} elsif "/etc/issue".IO andthen .f && .r {
  say "2";
} else {
  say "3";
}
