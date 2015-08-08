require_relative 'concerns/memorable'
class Artist
  extend Memorable::ClassMethods

  attr_accessor :name
  attr_reader :songs

  def initialize
    # @@artists << self
    # @songs = []
    # super
    @songs = []
    Artist.all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.tr(' ', '-')
  end
end
