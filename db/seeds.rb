require 'rest-client'
require 'json'
require 'pry'

# episodes = RestClient.get('https://rickandmortyapi.com/api/episode')
# character_hash = JSON.parse(episodes)


2.times do |x|
  response = RestClient.get("https://rickandmortyapi.com/api/episode/?page=#{x+1}")
  episode_hash = JSON.parse(response)
  episode_hash["results"].each do |episode_results|
    Episode.create(name: episode_results["name"], episode: episode_results["episode"])
    # episode["characters"].each do |character_url|
    #   character_hash = JSON.parse(RestClient.get(character_url))
    #   Episode.update(character: character_hash["name"])
    # end
  end

#   # if page["info"]["next"] != ""
#   #   page.save
#   # else
#   #   break
#   # end
end

25.times do |x|
 response = RestClient.get("https://rickandmortyapi.com/api/character/?page=#{x+1}")
 character_hash = JSON.parse(response)
 character_hash["results"].each do |character|
   Character.create(name: character["name"], status: character["status"], species: character["species"], gender: character["gender"])
   # episode["characters"].each do |character_url|
   #   character_hash = JSON.parse(RestClient.get(character_url))
   #   Episode.update(character: character_hash["name"])
   # end
 end


end
# page2 = RestClient.get(character_hash["info"]["next"])
# new_character_hash = JSON.parse(page2)
# binding.pry
# 0
