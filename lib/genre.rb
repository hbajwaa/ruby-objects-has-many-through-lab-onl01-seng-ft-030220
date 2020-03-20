class Genre

  @@all = []
  attr_accessor :name 
  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def self.all
    @@all
  end

  def artists
    self.songs.collect {|song| song.artist}
  end


end
