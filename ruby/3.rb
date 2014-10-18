N = 600851475143

# Use a sieve to find all prime up to sqrt(num)
# Then test each to see if it's a factor.
# If the factors are empty, then the number is prime.
def prime_factors(num)
    arr = (2..Math.sqrt(num).round).to_a
    primes = arr.each do |i|
        arr.select! {|j| j%i != 0 or j==i}
    end
    pfacts = primes.select {|i| num%i == 0}

    return [num] if pfacts.empty?
    return pfacts
end

print prime_factors(N).max, "\n"
