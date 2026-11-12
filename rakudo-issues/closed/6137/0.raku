my &foo = BEGIN {
  RakuAST::Sub.new(
    name => RakuAST::Name.from-identifier("foo"),
    body => RakuAST::Blockoid.new(
      RakuAST::StatementList.new(
        RakuAST::Statement::Expression.new(
          expression => RakuAST::Call::Name::WithoutParentheses.new(
            name => RakuAST::Name.from-identifier("say"),
            args => RakuAST::ArgList.new(
              RakuAST::QuotedString.new(
                segments   => (
                  RakuAST::StrLiteral.new("foo"),
                )
              )
            )
          )
        )
      )
    )
  ).EVAL
}

foo()
