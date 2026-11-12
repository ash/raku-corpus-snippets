#!/usr/bin/raku

use experimental :rakuast;

class   A {}

# Signature 1 material
my $signature1 = :(Str, 'John');

my $ast = Q:qq| {$signature1.raku} |.AST;
print "AST: ";
say $ast.statements[0].expression.signature.raku;
my @astparams = |$ast.statements[0].expression.signature.parameters;
say "astparams";
say |@astparams;
# Signature 2 material
my $sig2 = RakuAST::Signature.new(
        parameters => (
                RakuAST::Parameter.new(
                        type => RakuAST::Type::Simple.new(
                                RakuAST::Name.from-identifier("A"),
                        )
                ),
#               ($ast.statements[0].expression.signature.parameters),
                |@astparams
                ),
);
say "sig2.raku: ";
say $sig2.raku;
# Signature 2 material
my $sig3 = RakuAST::Signature.new(
        parameters => (
                RakuAST::Parameter.new(
                        type => RakuAST::Type::Simple.new(
                                RakuAST::Name.from-identifier("A"),
                        )
                ),
#               ($ast.statements[0].expression.signature.parameters),
                @astparams
                ),
);
say "sig3.raku: ";
say $sig3.raku;
