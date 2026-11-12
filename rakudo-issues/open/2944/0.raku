sub wat ($n) {
    1.map: -> $m { say "uno: $m" }
    1.map: -> $m { say "dos: $m" }
}

for 1 -> $p { say "|$p|"; wat($p) } # explicit for loop variable
say '';
for 1       { say "|$_|"; wat($_) } # implicit for loop variable
say '';
for 1 -> $p { say "|$p|"; sink wat($p) } # explicit for loop variable with sink
