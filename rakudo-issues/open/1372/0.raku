BEGIN '/tmp/dyncall'.IO.mkdir.add('DYN.pm6').spurt: ｢sub EXPORT { Map.new: ('$meows' => 'foos', '&foo' => sub { CALLER::<$meows> }) }｣; use lib </tmp/dyncall>; use DYN; say foo
