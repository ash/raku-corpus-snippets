my @patterns = lines.first.split: ", ";
my @designs = lines[1..*];
say +@designs.grep(/^ @patterns+ $/);
