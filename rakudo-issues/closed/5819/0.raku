unit module Something;

sub the-sub($optional) is export(:TAGGED)
{
    dd $optional
}

our &the-sub-assumed is export(:TAGGED) = &the-sub.assuming(0.5);
