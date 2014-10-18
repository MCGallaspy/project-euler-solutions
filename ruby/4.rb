three_digs = (100..999).to_a

prods = three_digs.combination(2).map {|i,j| i*j}

palindromes = prods.select do |num|
    num_str = num.to_s.split(//)
    num_str == num_str.reverse
end

print palindromes.max, "\n"
