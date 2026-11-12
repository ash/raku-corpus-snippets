my @words = <APPLE BANANA WATERMELON>; for ^1_000 { my $ = @words.grep: {"this is the name of something APPLE".contains: $_} }; say now - INIT now
