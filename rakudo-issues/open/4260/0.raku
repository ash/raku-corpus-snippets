class { submethod TWEAK          { Any.map: {say 99}     } }.new; # 99
class { submethod TWEAK          { Any.map: {say 99}; 42 } }.new; # 99
class { submethod TWEAK (--> 42) { Any.map: {say 99}     } }.new; # 99
