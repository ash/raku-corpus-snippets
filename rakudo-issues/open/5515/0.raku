role MixedInRoleName[$a] { has $.a = $a; }
enum EnumName (
    KeyOne => 1 but MixedInRoleName['Yksi'],
    KeyTwo => 2 but MixedInRoleName['Kaksi']
);
