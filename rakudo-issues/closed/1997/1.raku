my %a = :1a, :2b, :3c;
my %b := %a.clone;

%a<a> = 100;

say %a;  # {a => 100, b => 2, c => 3}
say %b;  # {a => 100, b => 2, c => 3}
