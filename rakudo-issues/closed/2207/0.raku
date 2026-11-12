my $p=Proc::Async.new("xxxx"); $p.Supply.act: { .print }; await $p.start; CATCH { default {say "caught!"}}
