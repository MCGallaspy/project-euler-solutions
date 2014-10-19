# There are well known closed formulas for the given sums.
# You could do this one by hand! But I'm lazy.

N = ARGV[0].to_i

def lin_sum(n)
    n*(n+1)/2
end

def sq_sum(n)
    n*(n+1)*(2*n+1)/6
end

ans = (lin_sum(N))**2 - sq_sum(N)

print ans, "\n"
