def fibs(n)
  arr = [0, 1]
  if n < 1
    return arr[0]
  end
  
  for i in 2...n
    arr << arr[i - 1] + arr[i - 2]
  end
  arr
end

print fibs(20) // test

outside_arr = []
def fibs_rec(n)
  if n < 2
    outside_arr << n
    n
  end

  num = fibs_rec(n - 1) + fibs_rec(n - 2)
  outside_arr << num
  num
end

fibs_rec(20)
print outside_arr
