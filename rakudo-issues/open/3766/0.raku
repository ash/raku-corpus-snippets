class C { has $.a = s; }
sub s {}
# OUTPUT: ===SORRY!===
#         Null regex not allowed
#         ------> class C { has $.a = s; ⏏}; sub s {}
#         Couldn't find terminator ;
#         ------> class C { has $.a = s; ⏏}; sub s {}
#             expecting any of:
#                 ;
