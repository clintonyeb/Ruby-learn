def mul(a, b)
  return a if b == 1
  return a + mul(a, b-1)
end

p mul(2, 10)
