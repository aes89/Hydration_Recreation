#***WELCOME
puts "Welcome to 'Hydration Recreation' - where the more hydrated you are, the more points you get!"

#*** NAME AND BLANK NAME ERROR HANDLING
require_relative 'invalidname_errorhandling'

puts "Nice to meet you #{user}!"


#*** ARE YOU GOING TO PLAY?
require_relative 'continue_or_quit'

#***OUTPUT

puts "Did you know the average adult man (a bit less for ladies) is meant to get up to 4 litres per day? You get some from food, but you think you come close to this?"
puts "I thought not."
puts "let's say 1 glass is 500mL (more than a soda can) - that's 8 glasses a dagy! If 1 glass of water is 125 points, that's 1,000 points a day"

#*** SET GOAL AND BLANK GOAL ERROR HANDLING

goal

#while !points
#    puts "How many points will you aim for?"
#    goal = gets.chomp
#
#    case goal
#        when "yes"
#            puts "Great! Let's get hydrated"
#            break
#        when "no"
#            puts "Alright, cya"
#            exit!
#        else
#            puts "'yes' or 'no' please"
#        end
#end

#*** POINTS TIME

