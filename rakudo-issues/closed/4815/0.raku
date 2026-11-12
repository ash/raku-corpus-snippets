my $p = Proc::Async.new: «"$*EXECUTABLE" -e "\$*OUT.print: 'out'; \$*ERR.print: 'err'"»;
my $stdout = "";
my $stderr = "";
$p.stdout.tap: {$stdout ~= $_};
$p.stderr.tap: {$stderr ~= $_};
my $proc = await $p.start;
say "stdout: '$stdout' | stderr: '$stderr'"
