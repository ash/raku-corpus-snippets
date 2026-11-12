sub foo {
	return %(
		'%()' => %( &?ROUTINE.name => "bar" ),
		'{}'  => { &?ROUTINE.name => "bar" },
	);
}

say foo;

# Output:
{%() => {foo => bar}, {} => {<unit> => bar}}
