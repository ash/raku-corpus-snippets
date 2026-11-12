class Big {};
class Small {};
multi sub infix:<cmp>(Big $b, Small $s) { Order::More };
multi sub infix:<cmp>(Small $s, Big $b) { Order::Less };
Big cmp Small;
Small cmp Big
