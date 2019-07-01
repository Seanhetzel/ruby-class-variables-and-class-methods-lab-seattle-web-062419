class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if genres_hash.has_key?(genre)
        genres_hash[genre] += 1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
  end
end
