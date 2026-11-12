my $p=Proc::Async.new("xxxx"); await $p.start; CATCH { default {say "caught!"}}
