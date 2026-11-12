constant BYTES = 1_048_576;

sub open-fds(--> Int) { (try '/dev/fd'.IO.dir.elems) // Int }

my $path = $*TMPDIR.add("slurp-repro-{BYTES}-{$*PID}.bin");
$path.spurt(Blob.new(0x61 xx BYTES));
LEAVE $path.unlink;

my $failed = 0;

for (
    'IO::Path.slurp(:bin)',           { $path.slurp(:bin).bytes },
    'IO::Path.slurp',                 { $path.slurp.chars },
    'IO::Handle.slurp(:bin) (works)', { my $fh = $path.open(:bin); LEAVE $fh.close; $fh.slurp.bytes },
    'IO::Handle.slurp (works)',       { my $fh = $path.open; LEAVE $fh.close; $fh.slurp.chars }
) -> $label, &read {
    my $got = try read();
    $failed++ without $got;
    say sprintf '  %-31s %s', $label, $got // "DIES: {$!.message}";
}

# 2nd bug: leaked filehandles
with open-fds() -> $before {
    for ^10 { try $path.slurp(:bin) }
    $*VM.request-garbage-collection;
    say "  open handles after 10 more IO::Path.slurp(:bin) and a GC: +{open-fds() - $before}";
}

exit $failed ?? 1 !! 0;
