use v6;

grammar Chord {
    rule TOP { <key> \S* }
    regex bare-key { <key> <!before \S > }
    regex bare-key-one { <key> [ <!before \S > | $ ] }
    regex bare-key-two { <key> <!before <:!Space> > }
    token natural-note { <[ A..G ]> }
    token accidental { <[ \# b ]> }
    regex key { <natural-note> <accidental>? }
}

use Test;

ok Chord.parse('C#');
ok my $m = Chord.parse('C#m');
note 'C#m: ', $m;

ok ! Chord.subparse(:rule(<bare-key>), 'C#m');
ok Chord.subparse(:rule(<bare-key>), 'C# m');
ok Chord.subparse(:rule(<bare-key>), 'C# ');
ok Chord.subparse(:rule(<bare-key>), 'C#'), 'Character class recognizes end-of-line';
ok Chord.subparse(:rule(<bare-key-one>), 'C#'), 'Alternation recognizes end-of-line';
ok Chord.subparse(:rule(<bare-key-two>), 'C#'), 'Property recognizes end-of-line';

done-testing;
