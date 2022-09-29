def fibs(n)
  arr = [0, 1]
  return [0] if n < 1

  (2...n).each do |i|
    arr << arr[i - 1] + arr[i - 2]
  end
  arr
end

print fibs(20)

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  arr = fibs_rec(n - 1)
  arr << arr[-1] + arr[-2]
end

print fibs_rec(20)
