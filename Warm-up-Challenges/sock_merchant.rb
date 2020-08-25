def sock_merchant(n, array)
  if n == array.length
    p array.group_by(&:itself).transform_values{ |v| v.size / 2 }.values.sum
  end
end

sock_merchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])
#output: 3
