grammar Number { rule TOP { <[a..z]>+ } }
say Number.subparse("ABCDE", :i);
# OUTPUT: #<failed match>
