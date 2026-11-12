class MetamodelX::FooHOW is Metamodel::ClassHOW {
    method add_method(Mu \type, $name, &code) {
        say "adding $name";
        my &wrapper = method (|c) { say "running $name"; callsame; };
        &code.wrap( &wrapper );
        self.Metamodel::ClassHOW::add_method(type, $name, &code);
   }
   method compose(Mu \type) {
       self.Metamodel::ClassHOW::compose(type);
   }
}

my package EXPORTHOW {
    package SUPERSEDE {
       constant class = MetamodelX::FooHOW;
    }
}
