my $b = Buf.new(0x3F, 0x8C, 0xCC, 0xCD);
say $b.read-num32(0, BigEndian);
say $b.read-num32(0, LittleEndian);
