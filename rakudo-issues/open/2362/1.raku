actual  | sub for-sub { #`(Sub|94535193083176) ... }
routine | sub for-sub { #`(Sub|94535193083176) ... }
block   | -> ;; $_? is raw { #`(Block|94535193292184) ... }

actual  | sub do-sub { #`(Sub|94535193116464) ... }
routine | sub do-sub { #`(Sub|94535193116464) ... }
block   | ->  { #`(Block|94535193292400) ... }

actual  | sub given-sub { #`(Sub|94535193116616) ... }
routine | sub given-sub { #`(Sub|94535193116616) ... }
block   | -> ;; $_? is raw { #`(Block|94535193292616) ... }

actual  | sub if-sub { #`(Sub|94535193116768) ... }
routine | ->  { #`(Block|94535193292760) ... }
block   | sub if-sub { #`(Sub|94535193116768) ... }

actual  | sub when-sub { #`(Sub|94535193116920) ... }
routine | ->  { #`(Block|94535193292760) ... }
block   | sub when-sub { #`(Sub|94535193116920) ... }

actual  | sub loop-sub { #`(Sub|94535193117072) ... }
routine | ->  { #`(Block|94535193292760) ... }
block   | sub loop-sub { #`(Sub|94535193117072) ... }

actual  | sub while-sub { #`(Sub|94535193117224) ... }
routine | ->  { #`(Block|94535193292760) ... }
block   | sub while-sub { #`(Sub|94535193117224) ... }
