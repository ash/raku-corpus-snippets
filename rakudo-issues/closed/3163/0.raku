my @numbers = 23, 5, 46;;
reduce &[<=], @numbers;
[<=] @numbers;
@numbers.reduce(&[<=])
