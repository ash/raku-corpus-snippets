lives-ok                                                                                                                                                                                               
    {                                                                                                                                                                                                  
        for ^Inf {                                                                                                                                                                                     
            if callframe($_) -> $c {                                                                                                                                                                   
                $ = $c.code ?? $c.code.name !! "?"                                                                                                                                                     
            }                                                                                                                                                                                          
            else {                                                                                                                                                                                     
                last                                                                                                                                                                                   
            }                                                                                                                                                                                          
        }                                                                                                                                                                                              
    },                                                                                                                                                                                                 
    "Exploring call frames until no code object does not crash";
