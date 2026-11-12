say [1, IterationEnd, 2];
say (1, IterationEnd, 2);
say gather { # Careful not to listify here.
    take 1;
    take IterationEnd;
    take 2;
};
