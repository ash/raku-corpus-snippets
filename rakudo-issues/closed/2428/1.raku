use v6.c;
use nqp;
my $precomp-store = CompUnit::PrecompilationStore::File.new(prefix=>'cache'.IO);
my $precomp = CompUnit::PrecompilationRepository::Default.new(store=> $precomp-store );
my $key = nqp::sha1('test.pod6');
'test.pod6'.IO.spurt(q:to/--END--/);
=begin pod
=TITLE More and more
 
Some text
 
=end pod
--END--
$precomp.precompile('test.pod6'.IO, $key, :force);
my $mod1 = 'test.pod6'.IO.modified;
my $handle = $precomp.load( $key )[0];
my $resurrected = nqp::atkey($handle.unit,'$=pod')[0];
say $resurrected ~~ Pod::Block::Named;
'test.pod6'.IO.spurt(q:to/--END--/);
=begin pod
=TITLE More and more
 
Some more text added
 
=end pod
--END--
say "modified first: " ~ $mod1;
say "modified next: " ~ 'test.pod6'.IO.modified;
my $new-handle = $precomp.load($key, :since('test.pod6'.IO.modified))[0];
with $new-handle { say 'new-handle exists'} else { say 'no new-handle'};
put $handle;
put $new-handle;
