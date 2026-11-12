use experimental :rakuast;

my $rakudoc = q:to/SRC/;
    =begin code :lang<RakuDoc>
    =config * :!error
    =end code
    SRC
my $ast = "=begin rakudoc\n$rakudoc\n=end rakudoc".AST.rakudoc.head;
say "Original:\n｢$rakudoc｣";
say "AST:\n", $ast;
say "Deparsed differs from original, deparsed:\n｢",$ast.DEPARSE,'｣'
    unless $ast eq $ast.DEPARSE
