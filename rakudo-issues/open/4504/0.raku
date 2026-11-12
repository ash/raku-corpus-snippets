sub f($x) { sleep 1 }; ^3 .race(:1batch).map(&f); say truncate now - ENTER now
