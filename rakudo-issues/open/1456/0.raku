$output ~~ Failure and not $output.handled 
````

However, the first condition would actually be true if a `none` `Junction` is used containing non-`Failure` object:
