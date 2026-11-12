# note that the UCD promises:
# #  All block ranges start with a value where (cp MOD 16) = 0,
# #  and end with a value where (cp MOD 16) = 15. In other words,
# #  the last hexadecimal digit of the start of range is ...0
# #  and the last hexadecimal digit of the end of range is ...F.
# #  This constraint on block ranges guarantees that allocations
# #  are done in terms of whole columns, and that code chart display
# #  never involves splitting columns in the charts.

# note also that the UCD says:
# 0370..03FF; Greek and Coptic
# 2F800..2FA1F; CJK Compatibility Ideographs Supplement

# note finally:
# these are just samples - I know that there are many others

my @samples-and-context = (
    0x377, # correct
    0x378, # reserved wrongly showing 'No_Block'
    0x379, # reserved wrongly showing 'No_Block'
    0x37a, # correct
    0x2f9dc, # wrongly showing a different block, 'CJK Unified Ideographs'
    0x2f9dd, # wrongly showing a different block, 'CJK Unified Ideographs Extension B'
    0x2f9de, # wrongly showing a different block, 'CJK Unified Ideographs'
);

for @samples-and-context -> $codepoint {
    my $glyph = chr( $codepoint );

    say "codepoint U+$codepoint.base(16) shows to be in block : $glyph.uniprop('Block')";
}
