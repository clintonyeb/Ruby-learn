A = [1, 2, 3]
B = []
C = []

def move(n, source, target, aux)
  if n > 0
    move(n-1, source, aux, target)
    target.push(source.pop)
    print "A: #{A.to_s}, B: #{B.to_s}, C: #{C.to_s}\n"
    move(n-1, aux, target, source)
  end
end

move(A.length, A, C, B)
