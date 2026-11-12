class A1
{
   has $.a1;
   method new ($a1)
   {
      return self.bless(:$a1);
   }
}

class A2
{
   has $.a2;
   method new ($a2)
   {
      return self.bless(:$a2);
   }
}

class B is A1 is A2
{
   method new ($a1, $a2)
   {
      return self.bless(:$a1, :$a2);
   }
   # submethod BUILD() {}
}

my $b = B.new("a1", "a2");
say $b;
