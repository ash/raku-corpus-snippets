grammar G {
	token foo { {} _ [ <?{False}> || <bar> ] _ }
	token bar { <foo> | something }
}
say so G.parse(:rule<bar>, '_something_'); # output: "True"
