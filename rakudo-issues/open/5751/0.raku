When I run the script I get the following output:
Could not find Vmail in:
    file#/var/www/apps/raku/vmail/lib
    inst#/root/.raku
    inst#/opt/rakudo-pkg/share/perl6/site
    inst#/opt/rakudo-pkg/share/perl6/vendor
    inst#/opt/rakudo-pkg/share/perl6/core
    ap#
    nqp#
    perl5#
  in block  at /opt/rakudo-pkg/share/perl6/site/sources/9740DDE0E85E09
+3DCDF40F690C620BD9BAEE9078 (Red::Attr::Relationship) line 46
  in method relationship-model at /opt/rakudo-pkg/share/perl6/site/sou
+rces/9740DDE0E85E093DCDF40F690C620BD9BAEE9078 (Red::Attr::Relationshi
+p) line 43
  in method build-relationship at /opt/rakudo-pkg/share/perl6/site/sou
+rces/9740DDE0E85E093DCDF40F690C620BD9BAEE9078 (Red::Attr::Relationshi
+p) line 67
  in method <anon> at /opt/rakudo-pkg/share/perl6/site/sources/C6C0BDE
+B2D9A3E5141D8CD425806A5162AFE5DE9 (MetamodelX::Red::Relationship) lin
+e 58
  in method create at /opt/rakudo-pkg/share/perl6/site/sources/A963FC4
+C1C5D6923CAA0DC1451EE51EA254DA1ED (MetamodelX::Red::Model) line 483
  in block <unit> at test_red.raku line 9
[download]
Hm... I don't think I am such a huge fan of the SHA-1 hashes...
