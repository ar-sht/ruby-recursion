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

print fibs(200)
