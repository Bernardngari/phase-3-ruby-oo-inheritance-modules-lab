require 'pry'

class Artist

	extend Memorable::ClassMethods
	extend Findable::ClassMethods
	include Paramable::InstanceMethods
	include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :songs

  @@artists = [] #class variable.

  def initialize
    #@@artists << self 
		super
    @songs = []
  end


  def self.all
    @@artists
  end


  def add_song(song) #adds a new song to the songs array.
    @songs << song
    song.artist = self 
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
