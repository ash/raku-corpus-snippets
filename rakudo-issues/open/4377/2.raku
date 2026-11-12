role ClonePhaser {
    only method clone (|c) {
        # get normal cloned value
        my $new-clone = callsame;

        # find all of the roles and classes
        my @roles = self.^mro(:roles);
        # get all of them that have a CLONE “phaser”
        my @CLONE = @roles. ..........;

        # call all of the clones
        for @CLONE {
            $new-clone.$_
        }

        # return the clone
        $new-clone
    }
}
