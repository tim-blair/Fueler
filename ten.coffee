solve = () ->
	primes = [2]
	loop
		largest = primes[primes.length - 1]
		candidate = largest + 1
		loop
			return primes if candidate > 2000000
			found = yes
			for prime in primes
				if candidate % prime is 0
					candidate += 1
					found = no
					break
			if found
				primes.push(candidate)
				break

primes = solve()
console.log primes.reduce( (a,b) -> a+b)
