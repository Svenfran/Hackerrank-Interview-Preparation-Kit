def two_strings(s1, s2)
  s1_u = s1.split('').uniq
  s2_u = s2.split('').uniq

  s2_u.each do |char|
    if s1_u.include?(char)
      puts 'YES' # in Hackerrank it has to be 'return' instead of 'puts'
      return
    end
  end
  puts 'NO' # in Hackerrank it has to be 'return' instead of 'puts'
end

two_strings('hello', 'world') # YES
two_strings('hi', 'world') # NO
two_strings('wouldyoulikefries', 'abcabcabcabcabcabc') # NO
two_strings('hackerrankcommunity', 'cdecdecdecde') # YES
two_strings('jackandjill', 'wentupthehill') # YES
two_strings('writetoyourparents', 'fghmqzldbc') # NO
