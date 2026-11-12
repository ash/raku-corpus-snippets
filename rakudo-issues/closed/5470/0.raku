my $doc = q:to/DOC/;
=begin pod
=begin code
class Foo {
    method foo is some-trait { }
}
=end code
=end pod
DOC
say my $doc2 = $doc.AST.DEPARSE;
