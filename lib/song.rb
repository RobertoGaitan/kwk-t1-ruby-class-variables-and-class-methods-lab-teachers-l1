class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = Array.new
  @@artists = Array.new
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genres_count = @@genres
    genres_count = genres_count.uniq
    genres_count.length
    genres_count
  end
  
  def self.artists
    artists_array = Array.new
    artists_array = @@artists.uniq
    artists_array
  end
  
  def self.genre_count
    genre_hash = Hash.new
    @@genres.each do |genres|
      if genre_hash[genres] = nil
        genre_hash[genres] = 1
      else
        genre_hash[genres] += 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = Hash.new
    @@artists.each do |artists|
      if artist_hash[artists] = nil
        artist_hash[artists] = 1
      else
        artist_hash[artists] += 1
      end
    end
    artist_hash
  end
  
end