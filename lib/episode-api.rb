# require 'rest-client'
require 'pry'

# RestClient.get('https://rickandmortyapi.com/api/episode')
class Episode < ActiveRecord::Base
has_many :character_episodes
has_many :characters, through: :character_episodes

def self.find_characters_within_episode(episode_name)

end

def self.find_characters_within_episode(episode)

end

def self.find_characters_in_episode(episode)


end
def self.find_episode_by_episode(episode)
  result = self.find_by(episode: "#{episode}")
  puts "id: #{result.id}"
  puts "Name: #{result.name}"
  puts "Episode: #{result.episode}"
end
def self.find_episode_by_name(name)
  result = self.find_by(name: "#{name}")
  puts "id: #{result.id}"
  puts "Name: #{result.name}"
  puts "Episode: #{result.episode}"
end

end


# binding.pry
# 0
