sub foo($x, $y) { True };

sub bar($x, $y, $w)
{
    {
        my int $x2 = 1;
        my int $y2 = 2;
        if foo($x, $y) == foo($x, $y2) == foo($x2, $y2) == foo($x2, $y) {
            2;
        } else {
            1
        }
    }
};

say bar(1, 2, 25);
