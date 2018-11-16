require_relative '../config/environment'
# require_relative "../lib/character_api.rb"





def command_line_list
  puts "1.) find episode by name"
  sleep(1)
  puts "2.) find episode by season and episode number"
  sleep(1)
  puts "3.) find character info"
  sleep(1)
  puts "4.) find characters in a given episode"
  sleep(1)
  puts "5.) find episodes a character is in"
  sleep(1)
  puts "6.) find random character"
  sleep(1)
  puts "7.) find random episode"
  sleep(1)
  puts "8.) Waba-lub-a-dub-dub"
  sleep(1)
  puts "9.) Exit and lose out on the adventures ahead.."
  sleep(1)
  puts "type 'menu' for the command list"
end

def welcome
  puts "Welcome to the Rick and Morty Info-Guide!!!"
  sleep(4)
  greeting
  puts "What would you like to search for?"
  sleep(2)
end
# def type_character_name
#   puts "Type in character name"
#   #character_name = gets.chomp
# end
def greeting
  puts "How are you?"
  sleep(1)
  user_input = gets.chomp
  response(user_input)
  sleep(5)
end
def response(user_input)
  good_responses = ["great", "awesome", "good", "bueno"]
  okay_responses = ["okay", "ok", "awesome", "meh", "bleh"]
  bad_responses = ["bad", "sad", "angry", "mad", "depressed", "upset", "anxious"]
  if good_responses.include?(user_input.downcase)
    puts "Great to hear!"
  elsif okay_responses.include?(user_input.downcase)
    puts "Hope you start feeling better soon."
  elsif bad_responses.include?(user_input.downcase)
    puts "Geez Rick! I hope everything is ok..."
    sleep(1)
    puts "Maybe finding some characters"
    puts "and episodes will make you feel better?"
  else
    puts "Sorry we don't understand what you're saying..."
    sleep(2)
    puts "Maybe finding some characters and"
    puts "episodes will make you feel normal again?"
  end
end

def waba_lub_a_dub_dub
  sleep(2)
  puts "WHAT ARE YOU DOING.. *blerg* MORTY!!!"
  sleep(3)
  puts "Ah, geez! Rick."
  sleep(2)
  puts "Choose a new command, Morty."
  sleep(2)
  command_line_list

end
# def type_in_name
#   character_name = gets.chomp
# end

welcome
sleep(1)
puts "If you'd like to exit, put 'exit', otherwise press enter or anything else.."
command_input = gets.chomp
until command_input.downcase == "exit"
  command_line_list
  sleep(2)
  until command_input.downcase == "exit"
    user_input = gets.chomp
    sleep(2)
  if user_input == "1"
    puts "Sorry it is Case-sensitive"
    puts "Please enter an Episode name."
    user_input = gets.chomp
    Episode.find_episode_by_name(user_input)
    sleep(4)
  elsif user_input == "2"
    puts "Example: S01E01 "
    puts "Sorry it is Case-sensitive"
    puts "Place Episode like the Example, Please"
    user_input = gets.chomp
    Episode.find_episode_by_episode(user_input)
    sleep(4)
  elsif user_input == "3"
    puts "Sorry it is Case-sensitive"
    puts "Please enter a name"
    user_input = gets.chomp
    Character.get_character_info_by_name(user_input)
    sleep(4)
  elsif user_input == "4"
    puts "Sorry it is Case-sensitive"
    puts "Please enter an Episode-name"
    user_input = gets.chomp
    Episode.find_characters_within_episode(user_input)
    sleep(4)
  elsif user_input == "5"
    puts "Sorry it is Case-sensitive"
    puts "Please enter a Character-name"
    user_input = gets.chomp
    Character.episodes_for_a_given_character(user_input)
    sleep(4)
  elsif user_input == "6"
    Character.random_character
    sleep(3)
  elsif user_input == "7"
    Episode.random_episode
    sleep(3)
  elsif user_input == "8"
    waba_lub_a_dub_dub
  elsif user_input == "9"
    puts "Are you sure you wanna leave?"
    sleep(1)
    gets.chomp
    puts "Come on! Please!!! Just stay for one more search!"
    sleep(5)
    puts "NOOOOOOOOOOOO!..."
    sleep(3)
    break
  elsif user_input.downcase == "menu"
    command_line_list
  else
    puts "Can You Count? It needs to be one of the numbers provided..."
    sleep(1)
    puts "COME ON.. *blerg* MORTY!"
    sleep(4)
  end
  end
  break
end
# waba_lub_a_dub_dub
# type_character_name
# name = type_in_name
# get_character_from_api(name)
