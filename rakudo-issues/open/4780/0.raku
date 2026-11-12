sub postcircumfix:<⸨ ⸩>($a, $) is equiv(&[+]) is assoc<left> { 'postcircumfix called last' };
sub   prefix:<¶>($a) is looser( &postcircumfix:<[ ]>) { 'prefix called last' };
sub   prefix:<§>($a) is tighter(&postcircumfix:<[ ]>) { 'prefix called last' };
sub   prefix:<·>($a) is equiv(  &postcircumfix:<[ ]>) { 'prefix called last' };

for  &postcircumfix:<⸨ ⸩>, &prefix:<¶>, &prefix:<§> { 
    say '%-19s   prec: %s'.sprintf: .name, .prec('prec') 
} # OUTPUT: postcircumfix:<⸨ ⸩>   prec: t=
#           prefix:<¶>            prec: y:=
#           prefix:<§>            prec: y@=

say "looser:  "~ ¶42⸨0⸩; # OUTPUT: «looser:  prefix called last»
say "tighter: "~ §42⸨0⸩; # OUTPUT: «tighter: postcircumfix called last»
#say "equiv:  "~ ·42⸨0⸩; 
