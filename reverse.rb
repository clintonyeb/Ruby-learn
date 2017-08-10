def reverse(string)
  res = ''
  idx = string.length - 1
  while idx >= 0
    res = res + string[idx]
    idx = idx - 1
  end
  return res
end

puts(reverse("abc"))
puts(reverse("a"))
puts(reverse(""))