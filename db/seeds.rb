require 'rest-client'
require 'json'
require 'pry'

# episodes = RestClient.get('https://rickandmortyapi.com/api/episode')
# character_hash = JSON.parse(episodes)


# 2.times do |x|
#   response = RestClient.get("https://rickandmortyapi.com/api/episode/?page=#{x+1}")
#   episode_hash = JSON.parse(response)
#   episode_hash["results"].each do |episode_results|
#     Episode.create(name: episode_results["name"], episode: episode_results["episode"])
#    end
# end
#
# 25.times do |x|
#  response = RestClient.get("https://rickandmortyapi.com/api/character/?page=#{x+1}")
#  character_hash = JSON.parse(response)
#  character_hash["results"].each do |character|
#    Character.create(name: character["name"], status: character["status"], species: character["species"], gender: character["gender"])
#    # episode["characters"].each do |character_url|
#    #   character_hash = JSON.parse(RestClient.get(character_url))
#    #   Episode.update(character: character_hash["name"])
#    # end
#  end
# end
# 2.times do |x|
#   response = RestClient.get("https://rickandmortyapi.com/api/episode/?page=#{x+1}")
#   episode_hash = JSON.parse(response)
#   episode_hash["results"].each do |episode_results|
#     episode_results["characters"].each do |character_url|
#       character_id = character_url.split("/").last.to_i
#       CharacterEpisode.create(episode_id: episode_results["id"], character_id: character_id)
#     end
#   end
# end

# binding.pry
# 0
