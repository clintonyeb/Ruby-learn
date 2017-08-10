def sum n
  return 0 if n == 0
  return n + sum(n-1)
end

def sumArr arr, n
  return arr[n] if n == 0
  return arr[n] + sumArr(arr, n-1)
end

p sumArr [2, 3, 4], 2
