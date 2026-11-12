BEGIN {
    RakuAST::Sub.new(
      name      => RakuAST::Name.from-identifier("foo"),
      signature => RakuAST::Signature.new(),
      body      => RakuAST::Blockoid.new(
        RakuAST::StatementList.new()
      )
    ).EVAL
}
