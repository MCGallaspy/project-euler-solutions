Phi = 1.6180339887
Psi = 1. - Phi
def fib_n(n)
	((Phi**n - Psi**n)/Math.sqrt(5)).round
end
fibs = 0.upto(50).inject([]) {|a, i| a << fib_n(i) }
puts fibs.select {|i| i.even? && i <= 4000000}.inject(0) {|sum, x| sum += x}


