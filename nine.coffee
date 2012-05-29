square = (x) -> x * x
for i in [1..998]
	for j in [1..998 - i]
		k = 1000 - i - j
		[a,b,c] = [i,j,k].sort()
		if square(a) + square(b) is square(c)
			console.log(a*b*c)
			return
