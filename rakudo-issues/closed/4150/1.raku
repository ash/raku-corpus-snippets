$bar::baz = 33;
package bar {};
say bar::.raku; # OUTPUT: «{"\$baz" => 33}␤»
