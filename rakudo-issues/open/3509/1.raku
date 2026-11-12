my $þor-blob = Blob.new("þor".ords);
$þor-blob.decode( "ascii", :replacement("0"), :strict(False) ).say
