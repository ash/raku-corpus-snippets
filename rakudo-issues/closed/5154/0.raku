my $sentence = '"tag que começa com aspas"';
say "0 "~$sentence.subst(/^ '"' (.*?) '"' $/, $0);

say "1 " ~ $sentence;

say "2 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, $0, :g);

say "3 " ~ $sentence;

say "4 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, $0, :g);

say "5 " ~ $sentence;

say "6 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, $0, :g);

say "7 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, ~$0, :g);

say "8 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, ~$0, :g);

say "9 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, ~$0);

say "10 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, $0);

say "11 " ~ $sentence.subst(/^ '"' (.*?) '"' $/, $0, :g);

say "12 " ~ $sentence;
