def reverse string
  data = string.chars
  results = Array.new
  while data.count > 0
    results.push(data.pop)
  end
  results.join('')
end


p reverse "clinton"


