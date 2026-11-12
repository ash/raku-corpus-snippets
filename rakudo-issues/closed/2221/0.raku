srand(42);

my $time = DateTime.new(1534447684).utc + Duration.new(0.002);
for ^100 -> $i {
    $time = $time + Duration.new(2.rand);
    say "$i $time";
}
