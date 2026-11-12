my @states = < 0 1 2 3 4 5 6 7 8 9 A B C D E F G H I K L M N O P Q R S T U V W X Y Z a b c d e f >;
say 'RUN 1'; .say for my @res1 = anastates @states;
say 'RUN 2'; .say for my @res2 = anastates @states; # problem is always on 2nd (or 3rd) call

sub anastates (@s) {
    my @pairs;
    for ^@s -> $i {
       #for $i ^..  @s.end -> $j {  # work-around A1
       #for $i ^..^ +@s -> $j {     # work-around A2
       #my $range = $i ^..^ @s;     # work-around A3.1
       #for $range -> $j {          # work-around A3.2
        for $i ^..^ @s -> $j {      # trigger A
            die "BUG" if ! defined @s[$j]; # just bail when $j doesn't subscript a valid location in @s
            @pairs.push: [ @s[$i], @s[$j] ];
        }
    }
    my $equivs = hash @pairs.classify: *.lc.comb.sort.join; #  warnings when @pairs contains 'Any')
    gather for $equivs.values -> @c {
    for ^@c -> $i {
       #for $i ^.. @c.end {         # work-around B1
       #for $i ^..^ +@c {           # work-around B2
        for $i ^..^ @c {            # trigger B
            # this code not relevant
        }
    }
    }
}
