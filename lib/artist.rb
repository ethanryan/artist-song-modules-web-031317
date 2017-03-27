require 'pry'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  #the Parent::Child syntax above is called namespacing


  #extend Memorable
  extend Findable
  include Paramable

  # include : mixes in specified module methods as instance methods in the target class
  # extend : mixes in specified module methods as class methods in the target class

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def initialize
    super
    #super keyword tells our Artist's .initialize method
    #to use the code in the Memorable::InstanceMethods
    #module's .initialize method and also to use any
    #additional code in the Artist's .initialize method.

    #@@artists << self
    #self.class.all << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
