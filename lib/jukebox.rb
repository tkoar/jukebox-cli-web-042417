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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each.with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if songs.include?(song_name)
    puts "Playing #{song_name}"
  elsif song_name.to_i > 0 && song_name.to_i <= songs.length
    puts "Playing #{songs[song_name.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  puts help
  until command == "exit"
    puts "Please enter a command:"
    command = gets.chomp
    if command.downcase == "help"
      help
    elsif command.downcase == "list"
      list(songs)
    elsif command.downcase == "play"
      play(songs)
    else
      help
    end
  end
  exit_jukebox
end
