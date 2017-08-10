class Test
  def new(name)
    @name = name + 'new'
  end

  def initialize(name)
    @name = name + 'init'
  end

  def name
    @name
  end

  def id
    id
  end

  def vowel(c)
    r = "aeiou".index(c)
    return r != nil
  end
end

t = Test.new('clinton')
# puts t.name
=begin puts "Enter character:"
c = gets.chomp
if t.vowel (c)
  puts "#{c} is a vowel"
else
  puts "#{c} is a consonant"
end
=end

f = File.open('./reverse.rb') {|d| print d}

