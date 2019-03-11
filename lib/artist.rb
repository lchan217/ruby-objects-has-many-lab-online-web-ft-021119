require "pry"
class Artist 
 attr_accessor :name
 attr_reader :song 

  def initialize(name)
    @name = name
    @songs = []
  end
  def songs 
    @songs 
  end
  def add_song(song)
    song.artist = self 
    @songs << song 
  end 
  def add_song_by_name(song)
    new = Song.new(song)
    new.artist = self
    @songs << new 
  end 
  def self.song_count 
    @songs.count 
  end 
end
