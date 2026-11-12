# we always get user
# if we don't have avatar, the url is Any
# if security doesn't allow it, generated access token is Any
my ($user, $avatar-url, $access-token) = await get-db-user(login => "foo")
   .andthen( -> $user { 
      Promise.results([Promise.kept($user), get-avatar-url($user), get-access-token($user)])
   });
