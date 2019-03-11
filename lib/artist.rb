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
end
