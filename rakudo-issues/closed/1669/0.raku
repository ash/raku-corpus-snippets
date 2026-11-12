#|[Say hello at someone at home]
multi MAIN ('hello') {}
#|[Prints this message or the help of the given subcommand]
multi MAIN ('help')  {}
#|[Prints help information]
multi MAIN (:h($help)) {}
#|[Prints version information]
multi MAIN (:V($version)) {}
