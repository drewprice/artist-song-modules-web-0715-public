class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods

  def initialize
    Song.all << self
  end


  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include? self
  end

  def to_param
    name.downcase.tr(' ', '-')
  end
end
