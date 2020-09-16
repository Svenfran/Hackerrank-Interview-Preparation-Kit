def counting_valleys(steps, path)
  valleys = 0
  level = 0
  
  path.split('').each do |step|
    if step == 'U' && level == -1
      valleys += 1
    elsif step == 'U'
      level += 1
    else
      level -= 1
    end
  end
  p valleys
end

counting_valleys(8, 'UDDDUDUU') # output 1
counting_valleys(12, 'DDUUDDUDUUUD') # output 2
counting_valleys(100, 'DDUUDDDUDUUDUDDDUUDDUDDDUDDDUDUUDDUUDDDUDDDUDDDUUUDUDDDUDUDUDUUDDUDUDUDUDUUUUDDUDDUUDUUDUUDUUUUUUUUU') # output 2
