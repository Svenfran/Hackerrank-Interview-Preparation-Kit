def what_flavors(cost, money)
  hash = {}
  result = []

  (0..cost.length - 1).step(1).each do |i|
    rest = money - cost[i]
    if hash.keys.include?(rest)
      result << hash[rest]
      result << i + 1
      puts result.join(' ')
      return
    end
    hash[cost[i]] = i + 1
  end
end

what_flavors([1, 4, 5, 3, 2], 4) # output: 1 4
what_flavors([2, 2, 4, 3], 4) # output: 1 2
what_flavors([1, 2, 3, 5, 6], 5) # output: 2 3
what_flavors([4, 3, 2, 5, 7], 8) # output: 2 4
what_flavors([7, 2, 5, 4, 11], 12) # output: 1 3

# Solution does not work in Hackerrank, but why???