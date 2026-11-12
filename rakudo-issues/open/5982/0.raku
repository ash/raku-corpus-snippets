my $t = 'test pattern something after';

my $r1 = rx {'test'||'something'};

my $pos = 0;

while $t.match($r1, :$pos) {
    say "Found!";
    $pos = $/.to;
}


$pos = 0;
while $t.substr($pos).match($r1) {
    say "Substr Found!";
    $pos = $/.to;
}
