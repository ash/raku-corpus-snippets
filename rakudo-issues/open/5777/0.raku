    method merged-config( $ast, $block-name --> Hash ) {
        my %config;
        if $ast.defined && $ast.config {
            %config = .resolved-config with $ast;
            for ($ast.config.keys (-) %config.keys).keys -> $k { %config{$k} = $ast.config{$k}.Str }
        }
# remaining code
