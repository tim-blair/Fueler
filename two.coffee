a = 1
b = 2
sum = 0
while b < 4000000
	if b % 2 is 0 then sum += b
	[a, b] = [b, a + b]

console.log sum
