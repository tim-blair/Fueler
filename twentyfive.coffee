# store the digits backwards in an array so JS stops telling me I'm at Infinity
a = [1]
b = [1]
index = 2
loop
	c = []
	carry = false
	for i in [0...a.length]
		sum = a[i] + b[i]
		sum++ if carry
		if sum >= 10
			carry = true
			sum -= 10
		else
			carry = false
		c[i] = sum
	if b.length > a.length
		val = b[b.length - 1]
		val++ if carry
		c.push val
	else if carry
		c.push 1
	[a,b] = [b, c]
	index++
	if b.length >= 1000
		break

console.log index
