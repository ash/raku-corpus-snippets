    # Define an "is cleaned" trait on variables (invokes .CLEANUP)...
    multi trait_mod:<is>(Variable $v, :$cleaned! where Bool) {
        $v.block.add_phaser('LEAVE', $v.willdo({.CLEANUP}));
        $v.implicit-lexical-usage = True;
    }

    # Define an "is cleaned{...}" trait on variables 
    # (invokes specified block)...

    multi trait_mod:<is>(Variable $v, :$cleaned! where Block) {
        $v.block.add_phaser('LEAVE', $v.willdo($cleaned));
        $v.implicit-lexical-usage = True;
    }

    say 'BEFORE';
    {
        # Call the .CLEANUP method on these at end-of-scope...
        my $foo is cleaned = MyClass2.new(name=>'foo');
        my $bar is cleaned = MyClass2.new(name=>'bar');
        my $etc is cleaned = MyClass2.new(name=>'etc');

        # Execute the specified block at end-of-scope...
        my $other is cleaned{note "Final value was: $_"} = 42;

        say 'DURING';
    }
    say 'AFTER';
...

This should be handled by a class or role that provides 
auto-self-registration of new objects into LEAVE phasers, but it's 
currently impossible to register new LEAVE phasers into blocks at 
run-time, unless they already have at least one compile-time LEAVE 
phaser already declared. Here's as close as I could get:
