constant a = Mu;
constant b = Array;
constant c = Array[Array];
constant d = Array[Array[Int]];
constant e = Array[Array[Int]]();
constant f = Array[Array[Int()]]();
constant g = Array[Array[Int()]()]();
constant h = Array[Array[Int]];
constant i = Array[Array[Int]](Array[Array[Int](Array[Int]())]());
constant j = Array[Array[Int]];
constant k = Array[Array[Int()]()]();
constant l = Array[Array[Int]](Array[Array[Int](Array[Int()]())]());
constant m = Array[Array[Int]];

say WHAT my a $a = [[1,2],];   # (Array)
say WHAT my b $b = [[1,2],];   # (Array)
#say WHAT my c $c = [[1,2],];   # expected Array[Array] got Array ([[1, 2],])
#say WHAT my d $d = [[1,2],];   # expected Array[Array[Int]] got got Array ([[1, 2],])
#say WHAT my e $e = [[1,2],];   # expected Array[Int] got Array ([1, 2])
#say WHAT my f $f = [[1,2],];   # expected Array[Int(Any)] got Array ([1, 2])
say WHAT my g $g = [[1,2],];   # (Array[Array[Int(Any)](Any)])
#say WHAT my h $h = $g;         # expected Array[Array[Int]]
                                # got Array[Array[Int(Any)](Any)] (Array[Array[Int(Any)...)
say WHAT my i $i = [[1,2],];   # (Array[Array[Int]])
say WHAT my j $j = $i;         # (Array[Array[Int]])

say WHAT my k $k = [[1,'2'],]; # (Array[Array[Int(Any)](Any)])
say WHAT my l $l = [[1,'2'],]; # (Array[Array[Int]])
say WHAT my m $m = $l;         # (Array[Array[Int]])
