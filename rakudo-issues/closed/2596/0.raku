sub f ( $a, *%_ ) { }
say &f.signature ~~ :( $, | ) 
