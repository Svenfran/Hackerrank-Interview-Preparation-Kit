def make_anagram(a, b)
  counter = {}
  total = 0

  a.split('').each do |letter|
    counter[letter] ? counter[letter] += 1 : counter[letter] = 0 + 1
  end

  b.split('').each do |letter|
    counter[letter] ? counter[letter] -= 1 : counter[letter] = 0 - 1
  end

  counter.each_key do |k|
    total += counter[k].abs if counter[k] != 0
  end
  p total
end

make_anagram("cde", "cba") # output: 4
make_anagram("fcrxzwscanmligyxyvym", "jxwtrhvujlmrpdoqbisbwhmgpmeoke") # output: 30
make_anagram("abcdeef", "abblmcd") # output: 6
