class Song

  attr_accessor :song, :artist, :genre
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

  def count
      @@count
  end

  def self.count
    @@count
  end

  def name
    @name
  end

  def artists
    @@artists
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    #cant make genres uniq because you need to count the occurences of each
    genre_count_hash = @@genres.each_with_object({}) do |genre, genre_hash|
      genre_hash[genre] = @@genres.count(genre)
    end
    genre_count_hash
  end

  def self.artist_count
# each_with_object invokes its block for each element with an arbitrary object argument,
# and returns the initially given object, thus eliminating the need to
# return it ourselves as the block’s result. Simple and neat!
    artist_count_hash = @@artists.each_with_object({}) do |artist, artist_hash|
      artist_hash[artist] = @@artists.count(artist)
    end
  end

end
