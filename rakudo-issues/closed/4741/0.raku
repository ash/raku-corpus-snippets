unit class MultiVector;
subset UIntHash of MixHash where .keys.all ~~ UInt;
has UIntHash $.blades;

multi method new(UIntHash $blades) returns MultiVector { self.new: :$blades }
multi method new(Str $ where /^^e(\d+)$$/) { self.new: (1 +< (2×$0)    ).MixHash }

MultiVector.new: "e1";
