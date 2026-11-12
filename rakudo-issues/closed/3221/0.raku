$_ = 'abc';;
$/ = any 'def', 'ghi';;
m/abc/;
;
#result:  Cannot modify an immutable Str (def)  ;
#result:    in block <unit> at <unknown file> line 1;
