# native variables
my uint64 $u64 = 0;
my uint32 $u32 = 0;
my uint16 $u16 = 0;
my uint8  $u8  = 0;

# read/write subs
sub uint64-rw (uint64 $u is rw) { $u }
sub uint32-rw (uint32 $u is rw) { $u }
sub uint16-rw (uint16 $u is rw) { $u }
sub uint8-rw  (uint8  $u is rw) { $u }

# read only subs
sub uint64-ro (uint64 $u) { $u }
sub uint32-ro (uint32 $u) { $u }
sub uint16-ro (uint16 $u) { $u }
sub uint8-ro  (uint8  $u) { $u }

# read write tests
uint64-rw $u64;  # OK
uint32-rw $u32;  # error
uint16-rw $u16;  # error
uint8-rw  $u8;   # error

# read only tests
uint64-ro $u64;  # OK
uint32-ro $u32;  # OK
uint16-ro $u16;  # OK
uint16-ro $u8;   # OK
