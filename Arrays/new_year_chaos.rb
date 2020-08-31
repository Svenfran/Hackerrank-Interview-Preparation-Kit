def minimum_bribes(q)
  bribes = 0
  pos = q.length

  ((pos - 1)..0).step(-1).each do |i|
    if q[i] != (i + 1)
      if (i - 1) >= 0 && q[i - 1] == (i + 1)
        q[i - 1] = q[i]
        q[i] = (i + 1)
        bribes += 1
      elsif (i - 2) >= 0 && q[i - 2] == (i + 1)
        q[i - 2] = q[i - 1]
        q[i - 1] = q[i]
        q[i] = (i + 1)
        bribes += 2
      else
        puts 'Too chaotic'
        return
      end
    end
  end
  puts bribes
end

# starting position: [1, 2, 3, 4, 5]
minimum_bribes([2, 1, 5, 3, 4])
minimum_bribes([2, 5, 1, 3, 4])

