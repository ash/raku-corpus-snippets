use Test;
plan 2;
grammar G {
    rule TOP {:i $<digits>=[<.xdigit>**1..6]}
}

G.parse: "200";

is $/.Str, "200";
is $<digits>.Str, "200";
