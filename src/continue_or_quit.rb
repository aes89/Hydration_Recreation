# frozen_string_literal: true

# ***ARE YOU GOING TO PLAY OR QUIT?

continue = false

until continue
  puts 'Do you want to play?'
  playing = gets.chomp

  case playing

  when 'yes'
    puts "Great! Let's get hydrated"
    break
  when 'no'
    puts 'Alright, cya'
    exit!
  else
    puts "'yes' or 'no' please"
      end
end
