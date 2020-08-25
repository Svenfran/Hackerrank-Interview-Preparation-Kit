def hourglass_sum(arr)
  arr.map! { |a| a.map! { |n| n.to_i}}
  if arr.length == 6 && arr.map { |a| a.length == 6 ? 'true' : 'false'}.include?('false') != true
    sum_arr = []
    sum = 0
    (0...arr.length - 2).step(1).each do |i| # iterating through rows
      (0...arr[i].length - 2).step(1).each do |j| # iterating through columns
        sum += arr[i][j]
        sum += arr[i][j + 1]
        sum += arr[i][j + 2]
        sum += arr[i + 1 ][j + 1]
        sum += arr[i + 2 ][j]
        sum += arr[i + 2 ][j + 1]
        sum += arr[i + 2 ][j + 2]
        sum_arr << sum
        sum = 0
      end
    end
      p sum_arr.max >= -63 && sum_arr.max <= 63 ? sum_arr.max : 0
  end
end

hourglass_sum([
  [1, 1, 1, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [1, 1, 1, 0, 0, 0],
  [0, 0, 2, 4, 4, 0],
  [0, 0, 0, 2, 0, 0],
  [0, 0, 1, 2, 4, 0]
])
# output: 19

hourglass_sum([
  [-9, -9, -9, 1, 1, 1],
  [0, -9, 0, 4, 3, 2],
  [-9, -9, -9, 1, 2, 3],
  [0, 0, 8, 6, 6, 0],
  [0, 0, 0, -2, 0, 0],
  [0, 0, 1, 2, 4, 0]
])
# output: 28

hourglass_sum([
  [-1, 1, -1, 0, 0, 0],
  [0, -1, 0, 0, 0, 0],
  [-1, -1, -1, 0, 0, 0],
  [0, -9, 2, -4, -4, 0],
  [-7, 0, 0, -2, 0, 0],
  [0, 0, -1, -2, -4, 0]
])

# output: 0

hourglass_sum([
  [3, 7, -3, 0, 1, 8],
  [1, -4, -7, -8, -6, 5],
  [-8, 1, 3, 3, 5, 7],
  [-2, 4, 3, 1, 2, 7],
  [2, 4, -5, 1, 8, 4],
  [5, -7, 6, 5, 2, 8]
])

# output: 33