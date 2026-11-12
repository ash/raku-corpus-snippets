use Test; my Pair $p; is-deeply ($p .= new :key<foo> :value<bar>), :foo<bar>.Pair, 'fake-infix adverbs on a construct inside args to another routine'
