require_relative '../config/environment'
# require_relative "../lib/character_api.rb"





def command_line_list
  puts "1.) find episode by name"
  sleep(1)
  puts "2.) find episode by season and episode number"
  sleep(1)
  puts "3.) find characters in a given episode"
  sleep(1)
  puts "4.) find characters in a given episode name"
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
  puts "type menu for the command list"
end

def welcome
  puts "Welcome to the Rick and Morty Info-Guide!!!"
  sleep(4)
  greeting
  puts "What would you like to search for?"
  sleep(2)
  command_line_list
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
  okay_responses = ["okay", "ok", "awesome", "meh"]
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
sleep(2)
command_input = gets.chomp
until command_input.downcase == "exit"
  puts "Sorry it is Case-sensitive"
  user_input = gets.chomp
  sleep(2)
  if command_line_list == "1"
    puts "Please enter an Episode name."
    user_input = gets.chomp
    Episode.find_episode_by_name(user_input)
    sleep(5)
  elsif command_line_list == "2"
    puts "Example: S01E01 "
    puts "Place Episode like the Example, Please"
    user_input = gets.chomp
    Episode.find_episode_by_episode(user_input)
    sleep(5)
  elsif command_line_list == "3"
    user_input = gets.chomp

  elsif command_line_list == "4"
    user_input = gets.chomp
  elsif command_line_list == "5"
    user_input = gets.chomp
  elsif command_line_list == "6"
    user_input = gets.chomp
  elsif command_line_list == "7"
    user_input = gets.chomp
  elsif command_line_list == "8"
    waba_lub_a_dub_dub
  elsif command_line_list == "9"
    puts "Are you sure you wanna leave?"
    sleep(1)
    gets.chomp
    puts "Come on! Please!!! Just stay for one more search!"
    break
  else
    puts "Can You Count? It needs to be one of the numbers provided..."
    sleep(1)
    puts "COME ON.. *blerg* MORTY!"
    sleep(4)
  end
end
# waba_lub_a_dub_dub
# type_character_name
# name = type_in_name
# get_character_from_api(name)
