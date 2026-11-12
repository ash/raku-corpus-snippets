{ say 'outer'; 
    { say 'inner'; 
      &?OUTER::BLOCK($_ - 1) if $_ > 0
    }($_)
}(5)
