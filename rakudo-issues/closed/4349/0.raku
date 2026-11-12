my $name = "aa%0D%0Abb";
$name .= subst(:g, /'%' (<[A..Fa..f0..9]>**2)/, {
                            my $ord = :16(.[0].Str);
                            chr($ord)
                        });
dd $name
