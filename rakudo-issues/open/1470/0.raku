my $file = ("/doesnotexist/".encode ~ Buf.new(0x06, 0xAB)).decode('utf8-c8');
spurt $file, 'hello';
