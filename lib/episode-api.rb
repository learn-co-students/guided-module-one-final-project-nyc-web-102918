require 'rest-client'
require 'pry'

RestClient.get('https://rickandmortyapi.com/api/episode')
class Episode < ActiveRecord::Base
has_many :character_episodes 
has_many :characters, through: :character_episodes

def find_characters_within_episode(episode)

end

def find_name_by_episode(episode)

end

def find_episode_by_name(name)

end

end


# binding.pry
# 0
