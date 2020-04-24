# # ***WELCOME
# puts "Welcome to 'Hydration Recreation' - where the more hydrated you are, the more points you get!"

# # *** NAME AND BLANK NAME ERROR HANDLING
# require_relative 'errorhandling'

# puts "Nice to meet you #{user}!"


# #*** ARE YOU GOING TO PLAY?

# continue = false

# while !continue
#    puts "Do you want to play?"
#    playing = gets.chomp

#    case playing

#    when "yes"
#      puts "Great! Let's get hydrated"
#     break
#       when "no"
#       puts "Alright, cya"
#       exit!
#     else
#       puts "'yes' or 'no' please"
#       end
# end

# #***OUTPUT

# puts "Did you know the average adult man (a bit less for ladies) is meant to get up to 4 litres per day? You get some from food, but you think you come close to this?"
# puts "I thought not."
# puts "let's say 1 glass is 500mL (more than a soda can) - that's 8 glasses a dagy! If 1 glass of water is 125 points, that's 1,000 points a day"

# #** SET GOAL AND GOAL ERROR HANDLING

goal = 150000000000

case goal
when 0...500
    puts " A good place to start, maybe you can try for more next time?"
when 500..1500
    puts "Good one"
when 1500..INFINITY
    puts "Have you heard of hyponatremia #{name}?"
end

#*** TIMES
# def user_time
#     puts "Ok, be that way. Is it closer to breakfast, lunch or dinner?"
    
# end


# confirm = false

# while !confirm
    
#     time = Time.new
#     puts "It looks like it's #{time.hour}:#{time.min}. Is that right?"
#     time_confirm = gets.chomp
    
#         case time_confirm
#         when "yes"
#             puts "Great, let's see what you've drank today."
#             break
#         when "no"
#             user_time
#             break
#         else
#             puts "yes or no please"
#         end
# end

 
