count = 0
(1..999).each do |i|
	if i%3 == 0 || i%5 == 0
		count += i
	end
end
puts count

