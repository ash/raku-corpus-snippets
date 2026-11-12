class A { has $!size; has $!array; submethod BUILD(:$!size) {}; submethod TWEAK { $!size.say; my Int @a[$!size]; $!array := @a; } }; A.new(:size(10));
