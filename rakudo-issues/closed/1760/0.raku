class GTC is DateTime {
    constant catastrophe = DateTime.new: '1964-01-22T01:42:56.925148Z';
    constant gct-re = rx:i/
      ^           <.ws>? $<cycle>    = \d**3
        <.ws>? '.' <.ws>? $<day>     = \d**2
        <.ws>? '/' <.ws>? $<segment> = \d**2
        <.ws>? ':' <.ws>? $<unit>    = \d**3 <.ws>? ['GCT' <.ws>?]?
      $
    /;
    my $formatter = my method {
        my \cycles   := (my $Δ = (self - catastrophe).Rat / 100/24/60/60).Int;
        my \days     := (($Δ -= cycles) *= 100).Int;
        my \segments := (($Δ -= days  ) *= 100).Int;
        dd ['segments', segments, $Δ];
        my \units    := round ($Δ - segments) * 1000;
        sprintf "%03d.%02d/%02d:%03d GCT", cycles, days, segments, units;
    }


    multi method new (Str:D \date ) {
        date ~~ gct-re
          or die "You called .new with {date.gist} but .new only takes valid"
            ~ " GTC dates: {gct-re.gist}";

        my $s := ($<cycle>*100 + $<day> + $<segment>/100)*24*60*60 + $<unit>*.864;

        if %*ENV<SHOW_BROKEN> {
            self.new: catastrophe.later(seconds => $s).Instant, :$formatter
        }
        else {
            self.new: catastrophe.Instant + $s, :timezone(catastrophe.timezone),  :$formatter;
        }
    }
}

say GTC.new: '198.18/05:407 GCT'
