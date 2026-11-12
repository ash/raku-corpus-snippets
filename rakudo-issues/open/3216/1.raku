grammar Foo {
	token TOP { <before> }
	regex before { <foo> }
	regex foo { <!before 7> . }
}
