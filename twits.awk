/^\*[0-9]+ / {
	if ($0 ~ /^\*[0-9]+ [A-Z]/) {
		if (NR > 1 && !/^\s*$/) {
			print "missing blank line after header at line " NR
		}
	} else {
		print "header not capitalised at line " NR
	}
}


