my grammar Test { 
rule TOP { <CREATE> } 
token CREATE { "CREATE" }
};
say Test.parse: "CREATE"; 
