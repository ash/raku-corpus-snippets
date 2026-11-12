$*ENV<RAKUDO_HIST> ?? $*ENV<RAKUDO_HIST>.IO !! ($*HOME || $*TMPDIR).add('.perl6/rakudo-history');
