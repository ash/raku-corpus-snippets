say $*PERL.version; # v6.d
say $*PERL.compiler.version; # v2020.07
say ({ 1 | -1 } ... *)[^3]; # ((any(1, -1)) (any(1, -1)) (any(1, -1)))
