primes = [2]

for i in [1..10000]
	largest = primes[primes.length - 1]
	candidate = largest + 1
	loop
		found = yes
		for prime in primes
			if candidate % prime is 0
				candidate += 1
				found = no
				break
		if found
			primes.push(candidate)
			break

console.log primes[primes.length - 1]
