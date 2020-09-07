def maximum_toys(prices, k)
  i = 0
  prices.sort.each do |num|
    if k - num >= 0
      k -= num
      i += 1
    end 
  end
  p i
end

maximum_toys([1, 12, 5, 111, 200, 1000, 10,], 50) # output: 4
