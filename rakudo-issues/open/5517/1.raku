my @a; while () { FIRST @a.push: 'first'; ENTER @a.push: 'enter'; NEXT @a.push: 'next'; LEAVE @a.push: 'leave'; LAST @a.push: 'last'; }; @a.say
