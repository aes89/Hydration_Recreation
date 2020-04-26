# ***WELCOME
puts "Welcome to 'Hydration Recreation' - where the more hydrated you are, the more points you get!"

# *** NAME AND BLANK NAME ERROR HANDLING
require_relative 'errorhandling'

current_user = user
puts "Nice to meet you #{current_user}!"


#*** ARE YOU GOING TO PLAY?

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

# ***OUTPUT

puts "Did you know the average adult man (a bit less for ladies) is meant to get up to 4 litres per day? You get some from food, but you think you come close to this?"
puts "I thought not."
puts "let's say 1 glass is 500mL (more than a soda can) - that's 8 glasses a dagy! If 1 glass of water is 125 points, that's 1,000 points a day"

#** SET GOAL AND GOAL ERROR HANDLING
goalvariable = goal


if goalvariable < 500
        puts "#{goalvariable} points? A good place to start, maybe you can try for more next time?"
elsif (501..2000).include? goalvariable
        puts "#{goalvariable} points? A moist goal indeed."
elsif goalvariable > 1500
        puts "#{goalvariable} points? Alright, but have you heard of hyponatremia #{current_user}?"
end

# #*** TIMES

# # confirm = false

# # while !confirm
  
# # *** AUTO TIME - remove?
#     # time = Time.new
#     # puts "It looks like it's #{time.hour}:#{time.min}. Is that right?"
#     # puts "Is it morning, afternoon or night time?"
#     # time_of_day = gets.chomp
    
#     # case time_confirm
#     #     when "morning"
#     #         puts "Great, let's see what you've drank today."
#     #         break
#     #     when "afternoon"
#     #         user_time
#     #         break
#     #     when "night"

#     #     end
#     #     end
# # end



def validate_time_of_day(time_of_day)
    raise InvalidInput, "Type 'breakfast', 'lunch' or 'dinner'." if time_of_day.empty?
    # raise InvalidInput, "Type 'breakfast', 'lunch' or 'dinner'" if time_of_day.include?/[0-9]*$/
    time_of_day
end

def time_of_day_validate
    puts "Is it closer to breakfast, lunch or dinner?"
    time_of_day = gets.strip
    validate_time_of_day(time_of_day)
    rescue InvalidInput => e 
        puts "Invalid time, error details: #{e.message}"
        retry
end

time_of_day = time_of_day_validate
puts time_of_day

#*** GET NUMBER OF CUPS FROM USER FOR DRINK TYPES

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
puts time_of_day
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

puts "Anything else?"
glasses_of_other = gets.to_i
other_points = OtherPoints.new(glasses_of_other)
points_total = points_total + other_points.send(time_of_day)
puts points_total

#*** GOAL MET?
points_total = 10
goalvariable = 100



def dinner_total(points_total, goalvariable)
    if points_total > goalvariable
        puts "Well done! Your got #{points_total - goalvariable} points over your goal!"
    elsif points_total < goalvariable
        puts "That's a shame, you needed #{goalvariable - points_total} more points."
    elsif points_total == goalvariable
        puts "Well done! You just made it!"
    else
        puts "Uh oh, something's gone wrong."
    end
end

def breakfast_total(points_total, goalvariable)
points_total = points_total / 3
goalvariable = goalvariable / 3 
    if points_total > goalvariable
        puts "Well done! You're #{points_total - goalvariable} points ahead! At this pace you'll meet your goal!"
    elsif points_total < goalvariable
        puts "You're #{goalvariable - points_total} points behind, you'll need to catch up to meet your goal!"
    elsif points_total == goalvariable
        puts "Well done! You're on track to meet your goal!"
    else
        puts "Uh oh, something's gone wrong."
    end
end

def lunch_total(points_total, goalvariable)
    points_total = points_total / 6 
    goalvariable= goalvariable / 6 
        if points_total > goalvariable
            puts "Well done! You're #{points_total - goalvariable} points ahead! At this pace you'll meet your goal!"
        elsif points_total < goalvariable
            puts "You're #{goalvariable - points_total} points behind, you'll need to catch up to meet your goal!"
        elsif points_total == goalvariable
            puts "Well done! You're on track to meet your goal!"
        else
            puts "Uh oh, something's gone wrong."
        end
    end

    case time_of_day
    when "breakfast"
        breakfast_total(points_total, goalvariable)
    when "lunch" 
        lunch_total(points_total, goalvariable)
    when "dinner"
        dinner_total(points_total, goalvariable)
    else
        puts "uh oh, something broke"
    end 