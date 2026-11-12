dd do if 0      {42} # Empty
dd do unless 1  {42} # Empty
dd do with Nil  {42} # Empty
dd do without 1 {42} # Empty

dd do when 0==1 {42} # Bool::False # <--- bug

#----

dd do if 1        {42} # 42
dd do unless 0    {42} # 42
dd do with 1      {42} # 42
dd do without Nil {42} # 42

dd do when 0==0   {42} # 42 # works as expected
