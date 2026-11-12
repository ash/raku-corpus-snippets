Blob.new(|('foo'.encode), 0 Z+& ('bars'.encode)).decode.raku;
Blob.new(0, |('foo'.encode) Z+& ('bars'.encode)).decode.raku
