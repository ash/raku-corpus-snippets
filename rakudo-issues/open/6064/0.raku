my $match = 1 ~~ m/\w/; # with both frontends: $match becomes ｢1｣ (and also $/ becomes ｢1｣)
say 'house' ~~ $match; # previously: prints '｢1｣' with RakuAST frontend: prints 'True'
