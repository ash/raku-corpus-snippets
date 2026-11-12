Promise.all-kept(@promises, :wait-for-all)
# returns promise with array of results from every promise when they are all Kept
# if any promise is broken, the result promise is broken
# if :wait-for-all is provided, the method waits on all broken promises 
#       and throws an exception with list of causes from every broken promise

Promise.any-kept(@promises, :wait-for-all)
# returns promise that gets resolved with first valid promise result
# if all promises are broken, the result promise is broken with list of causes
# if :wait-for-all is provided, the method gets resolved with list of results
#       where indexes of promises are matched to their results - broken promise results become `Any`

Promise.results(@promises)
# returns promise that gets resolved with list of results where indexes of promises are matched to their results
# broken promise results become `Any`
# it is never broken and consumes errors
