my $list = (1 ... *).map({ sleep 0.2; $_ });                                  

react {
    whenever $list.Supply { .put }
    whenever Promise.in(3) { done }
}
