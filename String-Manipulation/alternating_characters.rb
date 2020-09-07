def alternating_characters(s)
  s_arr = s.split('')
  counter = 0
  (0..(s_arr.length - 2)).step(1).each do |i|
    if s_arr[i] == s_arr[i + 1]
      counter += 1
    end
  end
  p counter
end

alternating_characters('AAAA') # output: 3
alternating_characters('BBBBB') # output: 4
alternating_characters('ABABABAB') # output: 0
alternating_characters('BABABA') # output: 0
alternating_characters('AAABBB') # output: 4
