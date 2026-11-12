16:20 	Zoffix 	m: sub infix:<zzz> is tighter(&[+]) { &CORE::infix:</>($^a, $^b) }; say 2 + 2 zzz 2; { sub infix:<zzz> is looser(&[+]) { &CORE::infix:</>($^a, $^b) }; say 2 + 2 zzz 2 }
16:20 	camelia 	rakudo-moar e3f6ababf: OUTPUT: «3␤3␤»
16:21 	Zoffix 	Yeah, I'd call that a bug. Your code can change from under you because the shadowing of existing ops is only half-done
