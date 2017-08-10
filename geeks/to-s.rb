class Codify

  def initialize
    @table = {
      '0' => '0',
      '1' => '1',
      '2' => '2',
      '3' => '3',
      '4' => '4',
      '5' => '5',
      '6' => '6',
      '7' => '7',
      '8' => '8',
      '9' => '9',
      '10' => 'A',
      '11' => 'B',
      '12' => 'C',
      '13' => 'D',
      '14' => 'E',
      '15' => 'F'
    }
  end

def num_to_s num, base
  res = ''
  while num != 0
    r = num % base
    num /= base
    res = @table[r.to_s] + res
  end
  res
end

end

d = Codify.new
puts "Enter number and base to convert:"
puts "Enter number:"
n = gets.chomp.to_i
puts "Enter base:"
b = gets.chomp.to_i
r = d.num_to_s n, b
puts "Answer: #{r}"
