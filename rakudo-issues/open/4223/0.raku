my %*SUB-MAIN-OPTS = :named-anywhere;

#| Manage documentation generation for Raku projects
proto MAIN(|) {*}

#| Universal options
multi MAIN (
    Bool :V(:$version), #= Display the current version and exit
) {}

#| Download and untar default assets to generate the site
multi MAIN ("setup", Bool :o(:$override) = False) {}

#| Start the documentation generation with the specified options
multi MAIN ("start",
    Str  :$topdir         = "doc",          #= Directory where the pod collection is stored
    Str  :$conf           = "doc-new.json", #= Configuration file
    Bool :v(:$verbose) = False,          #= Prints progress information
) {}

#| Check which pod files have changed and regenerate its HTML files.
multi MAIN ("update",
    Str  :$topdir    = "doc",               #= Directory where the pod collection is stored
    Str  :$conf      = "doc-updates.json",  #= Configuration file for updates
    Bool :$backup    = False                #= Back up existing files before performing the update
) {}
