primes = [2]
factors = []

target = 600851475143

findNextPrime = (primes) ->
	largest = primes[primes.length - 1]
	candidate = largest + 1
	loop
		for prime in primes
			if candidate % prime is 0
				candidate += 1
				break
		primes.push(candidate)
		break


checkPrime = (target, prime, factors) ->
	if target % prime is 0
		factors.push prime
		yes
	else
		no


while target > 1
	found = no
	for prime in primes
		found = checkPrime(target, prime, factors)
		if found
			target /= prime
			break
	continue if found
	loop
		findNextPrime(primes)
		prime = primes[primes.length - 1]
		found = checkPrime(target, prime, factors)
		if found
			target /= prime
			break

largestFactor = factors.reduce (a,b) -> Math.max a, b
console.log largestFactor
