say [[1], ['1'], [4]].unique(:as(*.map(&[~])), :with(&[eqv]))
