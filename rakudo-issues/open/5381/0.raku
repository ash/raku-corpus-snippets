my token inQuote { \' (.*?) \' };
say "'Hello World'" ~~ / <inQuote> /; # Nil
