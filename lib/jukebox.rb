songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
          - exit : exits this program"
        end

def list(array)
  array.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end
end
  
def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  array.each_with_index do |value, index|
    if user_input == value || user_input == "#{index+1}" 
      puts "Playing <#{value}>"
    end
  end
  puts "Invalid input, please try again."
end

def exit_jukebox
  puts "Goodbye"
end

# def run(array) 
#   help 
#   puts "Please enter a command:"
#   user_input = gets.chomp
#   until user_input == "exit"
#     if user_input == "list"
#       list
#     elsif user_input == "help"
#       help
#     elsif user_input == "play"
#       play
#     elsif user_input == "exit"
#       help
#       exit_jukebox
#     end
#     user_input = gets.chomp 
#   end
# end

def run(array)
   help
  user_choice = commands
   
    if user_choice == "list"
      list(array)
     elsif user_choice == "play"
      play(array)
     elsif user_choice == "exit"
      exit_jukebox
     else
      help
      user_choice
    end
end

