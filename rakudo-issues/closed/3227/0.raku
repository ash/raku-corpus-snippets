grammar Foo {
	rule TOP { <statement>* }

	proto token keyword { * }
	token keyword:create                        { :r :i « 'create' » }
	token keyword:or                            { :r :i « 'or' » }
	token keyword:replace                       { :r :i « 'replace' » }

	proto rule statement { * }
	rule statement:create { <keyword:create> }
}

class Actions {
	method FALLBACK ($name, $/) { die "Unknown action $name" }

	method keyword:create   ($/) { }
	method keyword:or       ($/) { }
	method keyword:replace  ($/) { }
	method statement:create ($/) { }
	method TOP              ($/) { }
	method ws               ($/) { }
}

my $res = Foo.subparse(
	"CREATE OR REPLACE",
	actions => Actions,
);

say $res;

=begin data
｢CREATE OR REPLACE｣
 statement => ｢CREATE ｣
  keyword => ｢CREATE｣
 statement => ｢OR ｣
  keyword => ｢OR｣
 statement => ｢REPLACE｣
  keyword => ｢REPLACE｣
=end data
