podman run --rm -it --entrypoint=/bin/sh ghcr.io/jj/raku-github-actions     
~ $ echo $RAKULIB
inst#/home/raku/.raku
~ $ export HOME=/tmp
~ $ pwd
/home/raku
~ $ zef --installed list
===> Found via /home/raku/.raku
Digest:ver<0.4.0>:auth<Lucien Grondin>
File::Directory::Tree:auth<labster>
File::Find:ver<0.1.1>
File::Which:ver<1.0.1>
GitHub::Actions:ver<0.0.1>
JSON::Class:ver<0.0.18>:auth<github:jonathanstowe>:api<1.0>
JSON::Fast:ver<0.16>
JSON::Marshal:ver<0.0.23>:auth<github:jonathanstowe>:api<1.0>
JSON::Name:ver<0.0.6>:auth<github:jonathanstowe>:api<1.0>
JSON::OptIn:ver<0.0.1>:auth<github:jonathanstowe>
JSON::Unmarshal:ver<0.08>
LibraryMake:ver<1.0.0>:auth<github:retupmoca>
License::SPDX:ver<3.15.0>:auth<github:jonathanstowe>:api<1.0>
Linenoise:ver<0.1.1>:auth<Rob Hoelz>
META6:ver<0.0.26>:auth<github:jonathanstowe>:api<1.0>
Shell::Command
Temp::Path:ver<1.001007>
Test::META:ver<0.0.17>:auth<github:jonathanstowe>:api<1.0>
Test::Output:ver<1.001002>
Testo:ver<1.003006>
URI:ver<0.3.5>
zef:ver<0.13.4>:auth<github:ugexe>:api<0>
===> Found via /usr/share/perl6/core
CORE:ver<6.d>:auth<perl>
~ $ zef install File::Directory::Tree
All candidates are currently installed
No reason to proceed. Use --force-install to continue anyway
~ $ zef install File::Temp
===> Searching for: File::Temp
===> Updating fez mirror: https://360.zef.pm/
===> Updated fez mirror: https://360.zef.pm/
===> Testing: File::Temp:ver<0.0.10>:auth<zef:rbt>
===> Testing [OK] for File::Temp:ver<0.0.10>:auth<zef:rbt>
===> Installing: File::Temp:ver<0.0.10>:auth<zef:rbt>
===> Install [FAIL] for File::Temp:ver<0.0.10>:auth<zef:rbt>: ===SORRY!=== Error while compiling /home/raku/home#sources/5F3C2F631F65B41420D2685E96BE40A39DEEAC8C (File::Temp)
Could not find File::Directory::Tree in:
    inst#/tmp/.raku
    inst#/usr/share/perl6/site
    inst#/usr/share/perl6/vendor
    inst#/usr/share/perl6/core
    ap#
    nqp#
    perl5#
at /home/raku/home#sources/5F3C2F631F65B41420D2685E96BE40A39DEEAC8C (File::Temp):3

===SORRY!=== Error while compiling /home/raku/home#sources/5F3C2F631F65B41420D2685E96BE40A39DEEAC8C (File::Temp)
Could not find File::Directory::Tree in:
    inst#/tmp/.raku
    inst#/usr/share/perl6/site
    inst#/usr/share/perl6/vendor
    inst#/usr/share/perl6/core
    ap#
    nqp#
    perl5#
at /home/raku/home#sources/5F3C2F631F65B41420D2685E96BE40A39DEEAC8C (File::Temp):3
