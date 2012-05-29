max = 0
for i in [999..900]
	for j in [999..900]
		val = i * j
		continue unless val > max
		str = "#{val}"
		if str is str.split("").reverse().join ""
			max = val

console.log max
