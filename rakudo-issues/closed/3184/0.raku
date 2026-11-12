use NativeCall;

class xmlParserCtxt is repr('CPointer') {
    method SetStructuredErrorFunc( &error-func (xmlParserCtxt $, Pointer $)) is native('xml2') is symbol('xmlSetStructuredErrorFunc') {*};
    method Free is native('xml2') is symbol('xmlFreeParserCtxt') { * }
    sub xmlNewParserCtxt (--> xmlParserCtxt) is native('xml2') {*};
    method new { xmlNewParserCtxt() }
}

class XMLContext {
    our $count = 0;
    has xmlParserCtxt $.native;

    method handle-error($) {}

    submethod TWEAK {
        $!native.SetStructuredErrorFunc: -> xmlParserCtxt:D $ctx, Pointer $err {
            self.handle-error($err);
        };
    }
    submethod DESTROY {
        ++$count;
        .Free with $!native;
    }
}

for ^10000 {
    XMLContext.new: :native(xmlParserCtxt.new);
}

say $XMLContext::count; # 0
