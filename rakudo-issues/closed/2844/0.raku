my @fib = 1,1, * + * ... *;
my @fib100k = @fib[^100000];
my @fib100k-plus = @fib[1..100001];
my $start = now;
my @sum-fib; 
race   for ^100000 { @sum-fib = @fib100k[$_] + @fib100k-plus[$_] }; say now - $start 
