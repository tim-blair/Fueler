sum = 0
for i in [1...1000] when i % 3 is 0 or i % 5 is 0
	sum += i

console.log sum
