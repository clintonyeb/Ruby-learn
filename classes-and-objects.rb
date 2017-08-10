class Song

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

end

jew = Song.new('Dong', 'Daddy', 4.55)

puts jew.object_id
