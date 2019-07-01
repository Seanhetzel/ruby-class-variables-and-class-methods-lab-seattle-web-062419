class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
  end

  def self.genre_count
    @@count
  end

  def self.artist_count
    @@artists
  end
end
