require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  # binding.pry

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    @@genres.each { |genre| @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1 }
    @@genre_count
  end

  def self.artist_count
    @@artists.each_with_index do |artist, count|
      counter = 0
      @@artist_count[artist] != nil || @@artist_count[artist] == artist ? @@artist_count[artist] = count+1 : @@artist_count[artist] = counter+1
    end
    @@artist_count
  end

end
