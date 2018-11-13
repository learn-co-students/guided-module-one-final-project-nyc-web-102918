require_relative '../config/environment'
# require_relative "../lib/character_api.rb"

def type_character_name
  puts "Type in character name"
  #character_name = gets.chomp
end

def type_in_name
  character_name = gets.chomp
end


type_character_name
name = type_in_name
get_character_from_api(name)
