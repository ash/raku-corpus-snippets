use v6;

# Turn anything into a public entertainer
role Diva {
  method captivate (&talent) {
    say "tais toi!";
    self.&talent;
    self!bow;
  }

  method !bow {
    say "<takes a bow>"
  }
}


# Learn to play
role Violinist {
  method fiddle {
    say "got sheet music, got rosin...";
    self!bow;
  }

  method !bow {
    say "<world's most beautiful melodies>"
  }
}


# cute and playful
class Puppy {
  method greet {
   say "<sniff>";
   self!bow;
  }

  method !bow {
    say "Bow wow wow!"
  }
}


# I am very happy with the next three lines
my $best_friend=(Puppy.new but Violinist) but Diva;
$best_friend.greet;
$best_friend.captivate: $best_friend.^lookup('fiddle');

say $best_friend.^mro; # Not sure what this should look like

# These next two lines make me sad, when uncommented, fail with
# Private method 'bow' must be resolved by class ...
#our $companion=Puppy.new but (Violinist, Diva);
#class WonderDog is Puppy does Violinist does Diva {};
