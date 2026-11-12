my $s1 = supply { emit 1; emit 2 }
my $s2 = supply { emit 0 }
my $s3 = supply { whenever $s1 {
        if $_ == 1 {
            whenever $s2 { emit $_; }
        }           
        else { emit $_; }
    }
}
react whenever $s3 { say $_ }
