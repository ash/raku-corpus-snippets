class Page {
    has $.title;
    has $.stub;
}
sub page(*%h) { Page.new( |%h ) } 

my $p = page(:stub<install>);
say $p; 

my &basepage = &page.assuming(:title<mypage>);
my $bp = basepage(:stub<install>);
say $bp;
