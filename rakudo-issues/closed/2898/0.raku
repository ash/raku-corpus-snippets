my %objects;
my Lock $ol .= new;

class Bar {
    submethod TWEAK (|) {
        $ol.protect: {
            my $obj-id = self.WHICH;
            die "DUPLICATE FOUND: ", $obj-id if %objects{$obj-id};
            %objects{$obj-id} = True;
            say $obj-id;
        }
    }

    submethod DESTROY {
        $ol.protect: {
            my $obj-id = self.WHICH;
            say "DESTROY ", $obj-id;
            %objects{$obj-id}:delete;
        }
    }
}

my @p;
for 1..100 {
    for 1..100 {
        Bar.new;
        @p.push: start {
            # Bar.new;
            sleep .01;
         }
    }
}

await @p;
