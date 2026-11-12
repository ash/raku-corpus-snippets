use v6;

my $in = Proc::Async.new: ‚/usr/bin/sort‘, :w;
LEAVE { $in.close-stdin; }

$in.start;
await $in.ready;

my @a = ('a'..'z').reverse;

for @a {
    $in.write: „$_\n“.encode;
}
