my $t = '<?xml-stylesheet type="text/css" href="style.css"?>';

my $r1 = rx {'<?' $<target>=[<!before 'xml '><[\w \-]>+] [\s*$<attrib>=[\w+] '=' $<quote>=[<[\"\']>] $<attrib-val>=[<-[$<quote>]>*]  $<quote> ]* [\s$<instruction>=[<-[ \"\' ]>*]]* '?>' };
my $r2 = rx {'<?' $<target>=[<!before 'xml '><[\w \-]>+] [\s*$<attrib>=[\w+] '=' $<quote>=[<[\"\']>] $<attrib-val>=[<-[\"]>*]        $<quote> ]* [\s$<instruction>=[<-[ \"\' ]>*]]* '?>' };


say "r1" if $t ~~ $r1;
say "r2" if $t ~~ $r2;
