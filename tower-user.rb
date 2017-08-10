Game = []
A = []
B = []
C = []

def arr(i)
  case
  when i == 1
    return A
  when i == 2
    return B
  when i == 3
    return C
  end
end

def move(a, b)
  arr(b).push(arr(a).pop)
end

def get_move
  puts "move from: "
  s = gets.chomp.to_i
  puts "to where: "
  t = gets.chomp.to_i
  move(s, t)
  C == Game
end

def start_game
  puts "Enter number of disks: "
  n = gets.chop.to_i
  for i in 1..n
    A.unshift i
    Game.unshift i
  end
  puts "Res: A: #{A.to_s}, B: #{B.to_s}, C: #{C.to_s}"
end

start_game
res = get_move

while !res
  puts "Res: A: #{A.to_s}, B: #{B.to_s}, C: #{C.to_s}"
  res = get_move
end

puts "Won Game: #{C.to_s}"

