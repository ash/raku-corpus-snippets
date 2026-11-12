start react whenever IO::Socket::Async.listen("localhost", 11111) { };
sleep 1;
react whenever IO::Socket::Async.listen("localhost", 11111) { };
CATCH { default { say .^name, ': ', .Str } }

# OUTPUT: «X::AdHoc+{X::Await::Died}: Unexplained error␤»
