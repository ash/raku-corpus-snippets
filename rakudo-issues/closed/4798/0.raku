class Weird {
    has $.not-two = 0;

    submethod TWEAK {
         $!not-two += 1 if $!not-two == 2
    }
}

say (Weird.new: :not-two(2)).not-two;
say (Weird.new.clone: :not-two(2)).not-two;
