(^20).map: { LAST say "last"; last if $_ == 10; $_ }  # last
say (^20).map: { LAST say "last"; last if $_ == 10; $_ }  # (0 1 2 3 4 5 6 7 8 9)
