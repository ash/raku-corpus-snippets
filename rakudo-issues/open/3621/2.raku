{
    my $x = '1,2,,3';
    $x .= split(',').list;
    print $x.raku; # OUTPUT: «$(Seq.new-consumed())»
}

{
    my $x = '1,2,,3';
    $x .= split(','); $x .= list;
    print $x.raku; # OUTPUT: «$("1", "2", "", "3")»
}
