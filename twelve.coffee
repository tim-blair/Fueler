primes = [2]

factor = (x, primes) ->
	factors = []
	while x > 1
		found = no
		for prime in primes
			if x % prime is 0
				factors.push prime
				x /= prime
				found = yes
				break
		if not found
			primes.push x
			break
	factors

# This is pretty weak code, but works well enough since I don't run it often
actualFactor = (x) ->
	factors = []
	for i in [1..x/2]
		if x % i is 0
			factors.push i
	factors.push x
	factors

isEnough = (factors) ->
	if factors.length < 7
		return false
	duplicates = 0
	prev = 0
	for f in factors
		if prev is f
			duplicates++
		prev = f
	if factors.length - duplicates > 6
		return true
	return false

triangle = 0
factors = []
for i in [1..90000]
	triangle += i
	factors = factor(triangle, primes)
	if isEnough factors
		actual = actualFactor(triangle)
		break if actual.length > 500

console.log triangle
