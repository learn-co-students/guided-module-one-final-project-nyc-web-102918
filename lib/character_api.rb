require 'rest-client'
require 'json'
require 'pry'

class Character < ActiveRecord::Base
has_many :character_episodes
has_many :episodes, through: :character_episodes

def self.get_character_info(character_name)
  #make web request
  # get_character = RestClient.get('https://rickandmortyapi.com/api/character/')
  # character_hash = JSON.parse(get_character)
  #   character_hash["results"].each do |info|
  #     if info["name"] == character_name
  #     end
self.find_by(name: "#{character_name}")
# binding.pry

end
# binding.pry
0
end
