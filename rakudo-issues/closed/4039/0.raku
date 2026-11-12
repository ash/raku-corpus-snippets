say $*PERL.version; # v6.d
say $*PERL.compiler.version; # v2018.12
say ({ 1 | -1 } ... *)[^3]; # (any(1, -1) any(1, -1) any(1, -1))
