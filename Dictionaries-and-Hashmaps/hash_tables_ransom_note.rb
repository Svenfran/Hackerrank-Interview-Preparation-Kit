def checkMagazine(magazine, note)
  magazine_hash = {}
  answer = 'Yes'

  magazine.each do |word|
    magazine_hash[word] ? magazine_hash[word] += 1 : magazine_hash[word] = 0 + 1
  end

  note.each do |word|
    magazine_hash[word] && magazine_hash[word] > 0 ? magazine_hash[word] -= 1 : answer = "No"  
  end
  
  p answer
end

checkMagazine(["give", "me", "one", "grand", "today", "night"], ["give", "one", "grand", "today"]) # yes
checkMagazine(["two", "times", "three", "is", "not", "four"], ["two", "times", "two", "is", "four"]) # no
checkMagazine(["ive", "got", "a", "lovely", "bunch", "of", "coconuts"], ["ive", "got", "some", "coconuts"]) # no
