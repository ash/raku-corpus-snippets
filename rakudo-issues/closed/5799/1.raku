say "o\c[combining ring above]" ~~ /o/; # -> Nil (fails!)
say "o\c[combining ring above]" ~~ /.\c[combining ring above]/; # -> Nil (fails!)
# Demonstrate that \c[] works fine in the regexp
say "o\c[combining ring above]" ~~ /o\c[combining ring above]/; # -> ｢o̊｣ (matches)
