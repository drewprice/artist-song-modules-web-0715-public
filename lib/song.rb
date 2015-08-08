class Song
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include? self
  end
end
