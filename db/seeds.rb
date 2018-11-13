require 'rest-client'
require 'JSON'
require 'pry'

# episodes = RestClient.get('https://rickandmortyapi.com/api/episode')
# character_hash = JSON.parse(episodes)

# page = 1
# 2.times do |page|
#   response = RestClient.get("https://rickandmortyapi.com/api/episode/?page#{page}")
#   episode_hash = JSON.parse(response)
#   episode_hash["results"].each do |episode|
#     Episode.create(name: episode["name"], episode: episode["episode"])
#     episode["characters"].each do |character_url|
#       character_hash = JSON.parse(RestClient.get(character_url))
#       Episode.update(character: character_hash["name"])
#     end
#   end

#   page += 1
#   # if page["info"]["next"] != ""
#   #   page.save
#   # else
#   #   break
#   # end
# end
# page2 = RestClient.get(character_hash["info"]["next"])
# new_character_hash = JSON.parse(page2)
binding.pry
0
