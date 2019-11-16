require 'bundler'
Bundler.require

module Concerns
end

require_all 'lib'



class Song
  
attr_accessor :name
   @@all = []
   def initialize(name)
     @name= name
     @@all << self
   end

def self.destroy_all
  self.all.clear
end 

def self.all 
  @@all
end 

def self.create(name)
  song= self.new 
  song.name= name 
  @@all << song 
end 

end 

#Song.create("Thundercat - For Love I Come - dance.mp3")






