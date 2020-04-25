# # # # ***WELCOME
puts "Welcome to 'Hydration Recreation' - where the more hydrated you are, the more points you get!"

# # # # *** NAME AND BLANK NAME ERROR HANDLING
require_relative 'errorhandling'


puts "Nice to meet you #{user}!"


# #*** ARE YOU GOING TO PLAY?

continue = false

while !continue
   puts "Do you want to play?"
   playing = gets.chomp

   case playing

   when "yes"
     puts "Great! Let's get hydrated"
    break
      when "no"
      puts "Alright, cya"
      exit!
    else
      puts "'yes' or 'no' please"
      end
end

# # ***OUTPUT

puts "Did you know the average adult man (a bit less for ladies) is meant to get up to 4 litres per day? You get some from food, but you think you come close to this?"
puts "I thought not."
puts "let's say 1 glass is 500mL (more than a soda can) - that's 8 glasses a dagy! If 1 glass of water is 125 points, that's 1,000 points a day"

# # #** SET GOAL AND GOAL ERROR HANDLING
goalvariable = goal


if goalvariable < 500
        puts "#{goalvariable} points? A good place to start, maybe you can try for more next time?"
elsif (501..2000).include? goalvariable
        puts "#{goalvariable} points? A moise goal indeed."
elsif goalvariable > 1500
        puts "#{goalvariable} points? Alright, but have you heard of hyponatremia #{@name}?"
end

# #*** TIMES


def user_time
    puts "Ok, be that way. Is it closer to breakfast, lunch or dinner?"
end


# confirm = false

# while !confirm
  
# *** AUTO TIME - remove?
    # time = Time.new
    # puts "It looks like it's #{time.hour}:#{time.min}. Is that right?"
    # puts "Is it morning, afternoon or night time?"
    # time_of_day = gets.chomp
    
    # case time_confirm
    #     when "morning"
    #         puts "Great, let's see what you've drank today."
    #         break
    #     when "afternoon"
    #         user_time
    #         break
    #     when "night"

    #     end
    #     end
# end

puts "Is it breakfast, lunch or dinner?"
time_of_day = gets.chomp.to_sym

require_relative "drinks_classes"

puts "Great, let's see what you've drank today."
puts "How many glasses of water?"
points_total = 0
glasses_of_water = gets.to_i
water_points = WaterPoints.new(glasses_of_water)
points_total = points_total + water_points.permanent
puts points_total

puts "Now for the nauty stuff, how much juice have you had?"
glasses_of_juice = gets.to_i
juice_points = JuicePoints.new(glasses_of_juice)
points_total = points_total + juice_points.send(time_of_day)
puts points_total

puts "How many cups of tea or coffee?"
glasses_of_caffinated = gets.to_i
caffinated_points = CaffinatedPoints.new(glasses_of_caffinated)
points_total = points_total + caffinated_points.send(time_of_day)
puts points_total

puts "How many cups of grown up stuff?"
glasses_of_alcoholic = gets.to_i
alcoholic_points = AlcoholicPoints.new(glasses_of_alcoholic)
points_total = points_total + alcoholic_points.send(time_of_day)
puts points_total

puts "How many cups of soda?"
glasses_of_soda = gets.to_i
soda_points = SodaPoints.new(glasses_of_soda)
points_total = points_total + soda_points.send(time_of_day)
puts points_total

puts "Amything else?"
glasses_of_other = gets.to_i
other_points = OtherPoints.new(glasses_of_other)
points_total = points_total + other_points.send(time_of_day)
puts points_total
