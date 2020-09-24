def jumping_on_clouds(c)
  jumps = 0
  i = 0
  while i < c.length - 1 do
    if c[i + 2] == 1 || i + 2 == c.length
      jumps += 1
      i += 1
    else
      jumps += 1
      i += 2
    end
  end
  p jumps
end

jumping_on_clouds([0, 0, 1, 0, 0, 1, 0]) # output: 4
jumping_on_clouds([0, 0, 0, 0, 1, 0]) # output: 3
jumping_on_clouds([0, 0, 0, 1, 0, 0]) # output: 3
