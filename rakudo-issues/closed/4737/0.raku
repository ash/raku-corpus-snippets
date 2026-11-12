my $repo = $*REPO; (1..1000).race.map({ CompUnit::RepositoryRegistry.register-name("$_", $repo); CompUnit::RepositoryRegistry.name-for-repository($repo) }).eager
