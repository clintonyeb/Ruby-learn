def findFib(max)
  x, y = 0, 1
  while x < max
    yield x
    x, y = y, x + y
  end
end

# findFib(10) {|x| print x, " "}


def yeah
  yield 2, 3, 4, 5, 7
end

yeah {|a| print a}

f = File.open("fib.rb")
f.each do |line|
  print line
end
f.close
