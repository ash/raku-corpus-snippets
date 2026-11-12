unit class Pod::To::HTML2;

method render( $pod-tree ) is export {
    say "At $?LINE tree is ", $pod-tree.perl;
}
