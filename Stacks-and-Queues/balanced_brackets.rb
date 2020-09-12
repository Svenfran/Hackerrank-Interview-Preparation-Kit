def is_balanced(s)
  stack = []
  s.chars.each do |c|
    if stack.empty? && c == '{' || c == '[' || c == '('
      stack << c
    elsif stack.last == '{' && c == '}' || stack.last == '[' && c == ']' || stack.last == '(' && c == ')'
      stack.pop
    else
      stack << c
    end
  end
  stack.length > 0 ? 'NO' : 'YES'
end

is_balanced('{[()]}') # YES
is_balanced('{[(])}') # NO
is_balanced('{{[[(())]]}}') # YES