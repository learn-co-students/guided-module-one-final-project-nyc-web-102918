require 'rest-client'
require 'json'
require 'pry'



def get_character_from_api(character_name)
  #make web request
  get_character = RestClient.get('https://rickandmortyapi.com/api/character/')
  character_hash = JSON.parse(get_character)
    character_hash["results"].each do |info|
      if info["name"] == character_name
      end

# binding.pry
0
  end
end
# binding.pry
0
