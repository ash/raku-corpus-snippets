use v6.c;

use MONKEY-TYPING;

augment class Any {
    method show0 { self.say }}

augment class List {
    method show1 { self.say }}

<hello world>.show0;
<hello world>.show1;
