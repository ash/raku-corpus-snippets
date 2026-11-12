BEGIN '/tmp/dyncall'.IO.mkdir.add('DYN.pm6').spurt: ｢sub EXPORT { {'$meows' => 'foos', '&foo' => sub { CALLER::<$meows> }} }｣; use lib </tmp/dyncall>; use DYN; say foo
