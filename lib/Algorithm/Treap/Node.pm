use v6;
unit class Algorithm::Treap::Node:ver<0.10.3>:auth<zef:titsuki>;

has $.value is rw is required;
has $.left-child is rw;
has $.right-child is rw;
has Num $.priority;
has $.key is rw is required;

submethod BUILD(:$key, :$value,Num :$priority) {
    $!priority = $priority;
    $!key = $key;
    $!value = $value;
}
