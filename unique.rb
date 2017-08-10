def my_unique array
  res = Array.new
  array.each do |d|
    res.push d if !res.include? d
  end
  res
end

p my_unique [2, 4, 7, 3, 5, 2, 3, 4, 6, 5, 6, 2, 3, 2]
