square = (x) -> x * x

sum = 0
squaredSum = 0
for i in [1..100]
	sum += i
	squaredSum += square(i)

diff = square(sum) - squaredSum
console.log diff
