borting due to test failure: Pod::To::HTML:ver<0.8.1>:auth<github:Raku> (use --force-test to override)
[Pod::To::HTML] # You failed 2 tests of 3
[Pod::To::HTML] # Failed test 'no crash in node2html with L<>'
[Pod::To::HTML] # at t/100-issue-37.t line 13
[Pod::To::HTML] # expected: "<a href=\"Array\">Array</a>"
[Pod::To::HTML] #      got: "<a href=\"Array.html\">Array</a>"
[Pod::To::HTML] # You failed 1 test of 1
[Pod::To::HTML] ===SORRY!=== Error while compiling /tmp/.zef.1749982488.7/Pod%3A%3ATo%3A%3AHTML%3Aver%3C0.8.1%3E%3Aauth%3Cgithub%3ARaku%3E.tar.gz/Pod-To-HTML-master/t/120-templates.t
[Pod::To::HTML] Invalid typename 'Pod::To::HTML::Renderer'
[Pod::To::HTML] at /tmp/.zef.1749982488.7/Pod%3A%3ATo%3A%3AHTML%3Aver%3C0.8.1%3E%3Aauth%3Cgithub%3ARaku%3E.tar.gz/Pod-To-HTML-master/t/120-templates.t:46
[Pod::To::HTML] ------> HTML::Dummy does Pod::To::HTML::Renderer<HERE> {
[Pod::To::HTML]     # Failed test 'Strip  \# from the text if internal-only link'
[Pod::To::HTML]     # at t/130-links.t line 11
[Pod::To::HTML]     # expected: 'internal-only'
[Pod::To::HTML]     #      got: '#internal-only'
[Pod::To::HTML]     # You failed 1 test of 1
[Pod::To::HTML] # Failed test 'internal-only links'
[Pod::To::HTML] # at t/130-links.t line 9
[Pod::To::HTML]     # Failed test 'q{&} not escaped from url'
[Pod::To::HTML]     # at t/130-links.t line 19
[Pod::To::HTML]     # expected: '/routine/q{&}'
[Pod::To::HTML]     #      got: '/routine/q{&}.html'
[Pod::To::HTML]     # Failed test 'q{<} not escaped from url'
[Pod::To::HTML]     # at t/130-links.t line 19
[Pod::To::HTML]     # expected: '/routine/q{<}'
[Pod::To::HTML]     #      got: '/routine/q{<}.html'
[Pod::To::HTML]     # Failed test 'q{>} not escaped from url'
[Pod::To::HTML]     # at t/130-links.t line 19
[Pod::To::HTML]     # expected: '/routine/q{>}'
[Pod::To::HTML]     #      got: '/routine/q{>}.html'
[Pod::To::HTML]     # Failed test 'q{'} not escaped from url'
[Pod::To::HTML]     # at t/130-links.t line 19
[Pod::To::HTML]     # expected: '/routine/q{'}'
[Pod::To::HTML]     #      got: '/routine/q{'}.html'
[Pod::To::HTML]     # You failed 4 tests of 4
[Pod::To::HTML] # Failed test 'Do not escape special chars if not internal url'
[Pod::To::HTML] # at t/130-links.t line 16
[Pod::To::HTML]     # Failed test '& escaped from url'
[Pod::To::HTML]     # at t/130-links.t line 28
[Pod::To::HTML]     # expected: '#%26'
[Pod::To::HTML]     #      got: '#&'
[Pod::To::HTML]     # Failed test '<> escaped from url'
[Pod::To::HTML]     # at t/130-links.t line 28
[Pod::To::HTML]     # expected: '#%3C%3E'
[Pod::To::HTML]     #      got: '#<>'
[Pod::To::HTML]     # Failed test '' escaped from url'
[Pod::To::HTML]     # at t/130-links.t line 28
[Pod::To::HTML]     # expected: '#%27'
[Pod::To::HTML]     #      got: '#''
[Pod::To::HTML]     # You failed 3 tests of 3
[Pod::To::HTML] # Failed test 'Escape special chars if internal url'
[Pod::To::HTML] # at t/130-links.t line 25
[Pod::To::HTML] # You failed 3 tests of 3
[Pod::To::HTML] ===SORRY!=== Error while compiling /tmp/.zef.1749982488.7/Pod%3A%3ATo%3A%3AHTML%3Aver%3C0.8.1%3E%3Aauth%3Cgithub%3ARaku%3E.tar.gz/Pod-To-HTML-master/t/140-config.t
[Pod::To::HTML] 'Node::To::HTML::Custom' cannot inherit from 'Node::To::HTML' because it is unknown.
[Pod::To::HTML] at /tmp/.zef.1749982488.7/Pod%3A%3ATo%3A%3AHTML%3Aver%3C0.8.1%3E%3Aauth%3Cgithub%3ARaku%3E.tar.gz/Pod-To-HTML-master/t/140-config.t:12
===> Testing [FAIL]: Pod::To::HTML:ver<0.8.1>:auth<github:Raku>
The command '/bin/sh -c zef install "Pod::To::HTML" "Pod::To::Markdown"' returned a non-zero code: 1
