# frozen_string_literal: true

# ***WELCOME

require 'rainbow'
require_relative 'images'
require_relative 'text_output_method'
# *** METHOD OF SLOW TEXT OUTPUT

welcome_image

slowly do
  "\nWelcome to #{Rainbow('Hydration Recreation').blue} - where the more hydrated you are, the more points you get!\n"
end

# *** NAME AND BLANK NAME ERROR HANDLING

require_relative 'validate_name'

def user
  slowly do
    "\nWhat's your name, friend? "
  end
  name = gets.strip
  validate_name(name)
rescue InvalidInput => e
  puts Rainbow("Invalid name, error details: #{e.message}").red.to_s
  retry
end

current_user = user

slowly do
  "
Nice to meet you #{current_user}!
"
end

# *** ARE YOU GOING TO PLAY?

continue = false

until continue
  slowly do
    "
Do you want to play? "
  end
  playing = gets.strip

  case playing

  when 'yes'
    slowly do
      "\nGreat! Let's get #{Rainbow('hydrated').blue}!\n"
    end
    continue = true
    break
  when 'no'
    slowly do
      "\n#{Rainbow('Alright, cya').red}\n"
    end
    exit!
  else
    slowly do
      "\n'#{Rainbow('yes').red}' or '#{Rainbow('no').red}' please.\n"
    end
     end
end

# ***OUTPUT

slowly do
  "\nDid you know the average adult man is meant to get up to #{Rainbow('4 litres per day').yellow}? It's a bit less for ladies, also, health recommendations are not very gender inclusive. You get some from food, but you think you come close to drinking 4 litres? \n\nI thought not.\n\nLet's say 1 glass is 500mL (more than a soda can) - that's 8 glasses a day! If 1 glass of #{Rainbow('water').blue} is 125 points, that's #{Rainbow('1,000').yellow} points a day.\nHint: drinks other than water will be worth less points.\n"
end

# *** GOAL INPUT AND VALIDATION

require_relative 'validate_num'

def goal
  slowly do
    "\nHow many points will you aim for? "
  end
  goal = gets.strip
  validate_num(goal)
rescue InvalidInput => e
  slowly do
    "\n#{Rainbow("Invalid goal, error details: #{e.message}").red}\n"
  end
  retry
rescue FloatNotInt => e
  slowly do
    "\n#{Rainbow("Invalid goal, error details: #{e.message}").red}\n"
  end
  retry
end

goalvariable = goal

if goalvariable <= 500
  slowly do
    "\n#{goalvariable} points? A good place to start, maybe you can try for more next time?\n"
  end
elsif (501..2000).include? goalvariable
  slowly do
    "\n#{goalvariable} points? A #{Rainbow('moist').blue} goal indeed.\n"
  end
elsif goalvariable > 2001
  slowly do
    "\n#{goalvariable} points? Alright, but have you heard of hyponatremia #{current_user}?\n"
  end
end

# #*** TIMES

require_relative 'validate_time'

def time
  slowly do
    "\nIs it closer to breakfast, lunch or dinner? "
  end
  time_of_day = gets
  validate_time(time_of_day)
rescue InvalidInput => e
  slowly do
    "\n#{Rainbow("Error details: #{e.message}").red}\n"
  end
  retry
  time
end

time_of_day = time

# *** GET NUMBER OF CUPS FROM USER FOR DRINK TYPES

require_relative 'validate_drinkinput'
require_relative 'drinks_classes'
require_relative 'validate_num'

slowly do
  "\nGreat! Let's see what you've drank today.\n"
end

points_total = 0

glasses_of_water = glasses_of_water_validation

water_points = WaterPoints.new(glasses_of_water)
points_total += water_points.permanent
slowly do
  "\nPoints so far: #{Rainbow(points_total.to_s).yellow}\n"
end

glasses_of_juice = glasses_of_juice_validation

juice_points = JuicePoints.new(glasses_of_juice)
points_total += juice_points.send(time_of_day)

slowly do
  "\nPoints so far: #{Rainbow(points_total.to_s).yellow}\n"
end

glasses_of_caffinated = glasses_of_caffinated_validation

caffinated_points = CaffinatedPoints.new(glasses_of_caffinated)
points_total += caffinated_points.send(time_of_day)

slowly do
  "\nPoints so far: #{Rainbow(points_total.to_s).yellow}\n"
end

glasses_of_alcoholic = glasses_of_alcoholic_validation

alcoholic_points = AlcoholicPoints.new(glasses_of_alcoholic)
points_total += alcoholic_points.send(time_of_day)

slowly do
  "\nPoints so far: #{Rainbow(points_total.to_s).yellow}\n"
end

glasses_of_soda = glasses_of_soda_validation

soda_points = SodaPoints.new(glasses_of_soda)
points_total += soda_points.send(time_of_day)

slowly do
  "\nPoints so far: #{Rainbow(points_total.to_s).yellow}\n"
end

glasses_of_other = glasses_of_other_validation

other_points = OtherPoints.new(glasses_of_other)
points_total += other_points.send(time_of_day)

slowly do
  "\nTotal points: #{Rainbow(points_total.to_s).yellow}\n"
end

# *** calculating bar animation
require_relative 'progress_bar'

# *** GOAL MET?

def breakfast_total(points_total, goalvariable)
  points_total /= 3
  goalvariable /= 3
  if points_total > goalvariable
    hydration_imminent
    slowly do
      "\nWell done! You're #{points_total - goalvariable} points ahead! At this pace you'll meet your goal!\n"
    end
  elsif points_total < goalvariable
    slowly do
      "\nYou're #{goalvariable - points_total} points behind, you'll need to catch up to meet your goal!\n"
    end
  elsif points_total == goalvariable
    hydration_imminent
    slowly do
      "\nWell done! You're on track to meet your goal!\n"
    end
  else
    slowly do
      "\nUh oh, something's gone wrong.\n"
    end
  end
end

def lunch_total(points_total, goalvariable)
  points_total /= 6
  goalvariable /= 6
  if points_total > goalvariable
    hydration_imminent
    slowly do
      "\nWell done! You're #{points_total - goalvariable} points ahead! At this pace you'll meet your goal!\n"
    end
  elsif points_total < goalvariable
    slowly do
      "\nYou're #{goalvariable - points_total} points behind, you'll need to catch up to meet your goal!\n"
    end
  elsif points_total == goalvariable
    hydration_achieved
    slowly do
      "\nWell done! You're on track to meet your goal!\n"
    end
  else
    slowly do
      "\nUh oh, something's gone wrong.\n"
    end
  end
    end

def dinner_total(points_total, goalvariable)
  if points_total > goalvariable
    hydration_achieved
    slowly do
      "\nWell done! Your got #{points_total - goalvariable} points over your goal!\n"
    end
  elsif points_total < goalvariable
    slowly do
      "\nThat's a shame, you needed #{goalvariable - points_total} more points. Try again tomorrow!\n"
    end
  elsif points_total == goalvariable
    slowly do
      "\nWell done! You just made it!\n"
    end
  else
    slowly do
      "\nUh oh, something's gone wrong.\n"
    end
    end
end

case time_of_day
when 'breakfast'
  breakfast_total(points_total, goalvariable)
when 'lunch'
  lunch_total(points_total, goalvariable)
when 'dinner'
  dinner_total(points_total, goalvariable)
else        
  puts 'uh oh, something broke'
end
