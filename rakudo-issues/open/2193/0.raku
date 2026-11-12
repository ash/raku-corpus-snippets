my $s = supply {
    emit 1;
} .share;
react {
    whenever $s { }
}
