# require 'rest-client'
# require 'json'
require 'pry'

class Character < ActiveRecord::Base
has_many :character_episodes
has_many :episodes, through: :character_episodes

def self.get_character_info_by_name(character_name)
result = self.find_by(name: "#{character_name}")
puts "id: #{result.id}"
puts "Name: #{result.name}"
puts "Status: #{result.status}"
puts "Species: #{result.species}"
puts "Gender: #{result.gender}"
end
def self.episodes_for_a_given_character(name)
  result = self.find_by(name: "#{name}").episodes
  result.each do |episode|
    puts "#{episode.name}"
  end
end
def self.random_character
  result = self.all.sample
  puts "#{result.name}"
end
# binding.pry
0
end
