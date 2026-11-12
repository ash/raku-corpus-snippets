''   ~~ / <?> | <?> [:i] /;      # Ite0 if adverb is in `[...]` and second or later atom
''   ~~ / <?> |     [:i] /;      # OK   if adverb is in `[...]` and first atom
''   ~~ / <?> | <?>  :i  /;      # OK   if adverb is not in `[...]`

''   ~~ / <?> | <?> <+[ ]>  /;   # Ite0 if character class is empty and second or later atom
''   ~~ / <?> |     <+[ ]>  /;   # OK   if character class is empty and first atom
''   ~~ / <?> | <?> <+[a]>  /;   # OK   if character class is not empty

''   ~~ / <?> | a ** 2..* $ /;   # Ite0 if repetition is `2..*` followed by end anchor
'aa' ~~ / <?> | a ** 2..* $ /;   # Ite0 even if could match
''   ~~ / <?> | a ** 0..* $ /;   # OK   if start (and succeed) at 0 repetition
''   ~~ / <?> | a ** 1..* $ /;   # OK   if start (and fail)    at 1 repetition
''   ~~ / <?> | a ** 2..*   /;   # OK   if end anchor removed
