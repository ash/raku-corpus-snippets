sub rakudoconfuser(Str $) {}; 
&rakudoconfuser.wrap: sub (Int $) {}; 
::("&rakudoconfuser").(42);
# OUTPUT:
