def count_swaps(a)
  num_swaps = 0

  (0...a.length - 1).step(1) do |k|
    (0...a.length - 1 - k).step(1) do |i|
      if a[i + 1] < a[i]
        num_swaps += 1
        a[i + 1], a[i] = a[i], a[i + 1]
      else
        num_swaps
      end
    end
  end
  puts "Array is sorted in #{num_swaps} swaps."
  puts "First Element: #{a.first}"
  puts "Last Element: #{a.last}"
end

count_swaps([6,4,1]) # output: 3
count_swaps([3,2,1]) # output: 3
count_swaps([1,2,3]) # output: 0
