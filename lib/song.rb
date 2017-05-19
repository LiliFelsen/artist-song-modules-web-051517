require 'pry'

class Song
  attr_accessor :name, :artist
  attr_reader :artist

  extend Memorable::ClassMethods, Findable
  include Paramable, Memorable::InstanceMethods

  @@songs = []

=begin
  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.reset_all
    @@songs.clear
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.count
    self.all.count
  end
=end

  def self.all
    @@songs
  end
end
