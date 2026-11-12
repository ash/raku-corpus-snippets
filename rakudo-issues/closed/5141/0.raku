my $dummy-supply = supply {
    "log".IO.spurt: "=== DUMMY SUPPLY " ~ $*AWAITER.WHICH ~ "\n", :append;
};
my $side-channel = Supplier.new; 
my $supply0 = supply {
    "log".IO.spurt: "=== SUPPLY 0 ENTER " ~ $*AWAITER.WHICH ~ "\n", :append;                          # 3. BlockAddWheneverAwaiter|432 (supply1)
    emit "foo";
    "log".IO.spurt: "=== SUPPLY 0 LEAVE " ~ $*AWAITER.WHICH ~ "\n", :append;
}       
  
my $supply1 = supply {                                                                                
    "log".IO.spurt: "=== SUPPLY 1 ENTER " ~ $*AWAITER.WHICH ~ "\n", :append;                          # 2. BlockAddWheneverAwaiter|232 (supply2)
    whenever $supply0 {                                                                               # supply1 @run-after pos 1, later -> supply2
        "log".IO.spurt: "=== SUPPLY 1 before side-channel " ~ $*AWAITER.WHICH ~ "\n", :append;        # 6. BlockAddWheneverAwaiter|992 (supply2 run-after)
        start {
            "log".IO.spurt: "=== SUPPLY 1 before side-channel in start " ~ $*AWAITER.WHICH ~ "\n", :append;        # 6a. ThreadPoolAwaiter|336
            $side-channel.emit: "side-channel data " ~ $*AWAITER.WHICH ~ "";
        }           
        sleep 0.1;
        emit "normal data";
    }           
    whenever $dummy-supply {}                                                                         # supply1 run-after pos 2, later -> supply2
    "log".IO.spurt: "=== SUPPLY 1 LEAVE " ~ $*AWAITER.WHICH ~ "\n", :append;                          # 4. BlockAddWheneverAwaiter|232 (supply2)
}                                                                                                     # supply1 @run-after rawa: BlockAddWheneverAwaiter|872
# The supply1 @run-after list has 2 entries:
# - emit "foo" blocks on the supply1 lock
# - dummy-supply.done (deactivate-one) blocks on the supply1 lock
# Both are handed up to the supply2 BAWA / @run-after list.
                                        
my $supply2 = supply {                                                                                # Awaiter::Blocking|608
    "log".IO.spurt: "=== SUPPLY 2 ENTER " ~ $*AWAITER.WHICH ~ "\n", :append;                          # 1. Awaiter::Blocking|608
    whenever $side-channel.Supply {         
        "log".IO.spurt: "=== SUPPLY 2 received side-channel data " ~ $*AWAITER.WHICH ~ "\n", :append; # 7. ThreadPoolAwaiter|336
       sleep 0.2;           
    }                       
    whenever $supply1 { 
        "log".IO.spurt: "=== SUPPLY 2 received data " ~ $*AWAITER.WHICH ~ "\n", :append;
        emit "data";
    }       
    "log".IO.spurt: "=== SUPPLY 2 LEAVE " ~ $*AWAITER.WHICH ~ "\n", :append;                          # 5. Awaiter::Blocking|608
}                                                                                                     # supply2 run-after rawa: BlockAddWheneverAwaiter|992
# The supply2 @run-after list has 2 entries:
# - emit "foo" blocks on the supply1 lock
# - dummy-supply.done (deactivate-one) blocks on the supply1 lock
# The first is processed until it blocks on the `emit "normal data"` / the supply2 lock which is held by the side-channel thread. It is awaited with the
# supply2 @run-after BAWA and appended to the list. The list now looks as follows:
# - dummy-supply.done (deactivate-one) blocks on the supply1 lock
# - emit "normal data" blocks on the (temporary) supply2 lock
# Now the dummy-supply is run. It blocks on the supply1 lock which is still held by the `emit "normal data" continuation. Thus it's a deadlock.

react whenever $supply2 {                                                                             
    say $_  
}
