sequence = (x) ->
	if x is 1
		1
	else if x % 2 is 0
		1 + sequence(x/2)
	else
		1 + sequence(3 * x + 1)


max = 0
maxNum = 0
for i in [1..1000000]
	len = sequence i
	if len > max
		max = len
		maxNum = i

console.log "max len is #{max} using #{maxNum}"
