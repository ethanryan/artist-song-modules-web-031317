require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  #the Parent::Child syntax above is called namespacing

  #extend Memorable
  extend Findable
  include Paramable

  # include : mixes in specified module methods as instance methods in the target class
  # extend : mixes in specified module methods as class methods in the target class

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    #@@songs << self
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
