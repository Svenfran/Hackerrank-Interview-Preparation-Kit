def rot_left(a, d)
  rot_arr = []

  (d..(a.length - 1)).step(1).each do |i|
    rot_arr << a[i]
  end

  (0..(d - 1)).step(1).each do |n|
    rot_arr << a[n]
  end
  
  rot_arr.each {|n| puts n}
end

rot_left([1, 2, 3, 4, 5], 4)
rot_left([33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97], 13)
rot_left([41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51], 10)
