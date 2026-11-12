say await Promise.kept(42).andthen({ $^x.result + 5 })
