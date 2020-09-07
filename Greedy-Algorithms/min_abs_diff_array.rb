def minimum_absolute_difference(arr)
  s_arr = arr.sort
  min_diff = 10**9

  (0..(s_arr.length - 1)).step(1).each do |i|
    current_diff = (s_arr[i].to_i - s_arr[i + 1].to_i).abs
    min_diff = [current_diff, min_diff].min
  end
  p min_diff
end

minimum_absolute_difference([3, -7, 0]) # output: 3
minimum_absolute_difference([1, -3, 71, 68, 17]) # output: 3
minimum_absolute_difference([-59, -36, -13, 1, -53, -92, -2, -96, -54, 75]) # output: 1
