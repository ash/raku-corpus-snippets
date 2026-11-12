my @letters = <a b c d e f>;
@letters[4]:delete;
say @letters[3..*]
say @letters[lazy 3..*]
