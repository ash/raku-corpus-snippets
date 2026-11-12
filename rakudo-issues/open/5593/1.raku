$ RAKUDO_RAKUAST=1 raku -I. -MRakuDoc::Render --rakudoc=TestText tmp/test.rakudoc 
===SORRY!=== Error while compiling /home/richard/development/rakuast-rakudoc-render/home#sources/45334C557865A97D1ECA0D3F3A3FAF2017FCE553 (OO::Monitors)
Variable '$cond' is not declared.  Perhaps you forgot a 'sub' if this
was intended to be part of a signature?
at /home/richard/development/rakuast-rakudoc-render/home#sources/45334C557865A97D1ECA0D3F3A3FAF2017FCE553 (OO::Monitors):101
------> macro wait-condition(⏏$cond) is export {
