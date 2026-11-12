RakuAST::Doc::Block.new(
  type   => "code",
  for    => True,
  config => ${:lang(RakuAST::QuotedString.new(
    processors => <words val>,
    segments   => (
      RakuAST::StrLiteral.new("RakuDoc"),
    )
  ))}
),
RakuAST::Doc::Block.new(
  type       => "config",
  directive  => True,
  config     => ${:error(RakuAST::Term::Name.new(
    RakuAST::Name.from-identifier("False")
  ))},
  paragraphs => (
    "*",
  )
),
"some text\n\n",
