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
    @songs << song
    song.artist = self
  end
  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self 
    @songs << new_song
  end 
  
  def self.song_count 
    Song.all.count
  end 
end
