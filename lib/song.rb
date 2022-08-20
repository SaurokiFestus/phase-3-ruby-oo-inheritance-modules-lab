require 'pry'

require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Song
  extend Memorable::ClassMethods
include Memorable::InstanceMethods
extend Findable
include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

end
