use v6;
use Test;

use-ok 'Algorithm::Treap';
use Algorithm::Treap;

{
    dies-ok { my $treap = Algorithm::Treap[Any].new; }, "It should handle Str or Int key-type";
}

{
    dies-ok { my $treap = Algorithm::Treap[Str].new(order-by => Any); }, "It should handle asc or desc order";
}

{
    dies-ok { my $treap = Algorithm::Treap[Str].new(order-by => 'ascasc'); }, "It should handle asc or desc order";
}

done-testing;
