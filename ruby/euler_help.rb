module Euler
    # Returns the prime factors of num using a sieve
    def self.prime_factors(num)
        arr = (2..(Math.sqrt(num)+1).round).to_a
        primes = arr.each do |i|
            arr.select! {|j| j%i != 0 or j==i}
        end
        pfacts = primes.select {|i| num%i == 0}

        return [num] if pfacts.empty?
        return pfacts
    end

    # Returns prime factors of num with multiplicities
    def self.pfs_with_multiplicity(num)
        pfacts = self.prime_factors(num)
        pfacts.map do |p|
            m = 0
            while num % (p**(m+1)) == 0
                m += 1
            end
            [p, m]
        end
    end
    
    # We'll use a sieve. Make an initial guess for the value of
    # the nth prime using a well-known approximation formula,
    # overestimate, and then just find all primes up to that number.
    def self.nth_prime(n)
        estm = ((n+1)*Math.log(n+1)).round
        primes = self.prime_sieve(estm)
        while primes.length < n
            estm += n
            primes = self.prime_sieve(estm)
        end
        return primes[n-1]
    end
    
    # Use a sieve to find all prime numbers up to n
    # This is a costly operation
    def self.prime_sieve(n)
        arr = (2..n).to_a
        primes = arr.each do |i|
            arr.select! {|j| j%i != 0 or j==i}
        end
    end
end

