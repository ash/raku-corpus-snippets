my $d = Date.new('2015-02-27');;
$d.later(:5h);
$d.later(:5ho);
$d.later(:5hou);
$d.later(:5hour);
$d.later(:5hours);
$d.later(:5foo);
$d.later(:5bar)
