#!/usr/bin/env ruby

def help
      puts "I accept the following commands:"
      puts "- help : displays this help message"
      puts "- list : displays a list of songs you can play"
      puts "- play : lets you choose a song to play"
      puts "- exit : exits this program"
end

def list(songs)
      songs.each_with_index do |song,index|
            puts "#{index +1}. #{song}"
      end
end

def play(songs)
      #puts "Please enter a song name or number:"
      user_choice = gets.chomp

      if user_choice.to_i > 0 && user_choice.to_i < 10
            puts "Playing #{songs[user_choice.to_i - 1]}"
      end

      if songs.include? user_choice
            match = false
            songs.each do |song|
                  if song == user_choice
                        puts "Playing #{song}"
                        match = true
                  end
            end
      end
      if !match
            puts "Invalid input, please try again"
      end
end

def exit_jukebox
puts "Goodbye"
end

def run(songs)
      help
      puts "Please enter a command:"
      user_choice = gets.chomp

      while user_choice != "exit"

            case user_choice
            when "help"
                  help
                  user_choice = gets.chomp

            when "list"
                  list(songs)
                  user_choice = gets.chomp


            when "play"
                  play(songs)
                  user_choice = gets.chomp

            when "exit"
                  exit_jukebox

            else
                  "That option is no valid."
                  user_choice = gets.chomp

            end
      end
      puts "Goodbye"
end
