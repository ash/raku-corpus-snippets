
with $*IN
{
  .nl-in( '>' );

  .lines
  .skip(1)
  .map( { my $i = .index( "\n" ) // die "Missing newline..."; Empty } )
}
