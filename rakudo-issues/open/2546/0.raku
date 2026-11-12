role B[$n] { method n { $n } }
role C[$n] does B[$n] { }
C[5].n.say # OUTPUT: (Mu)
