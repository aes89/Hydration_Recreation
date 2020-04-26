class InvalidInput < StandardError
end

class FloatNotInt < StandardError
end


#*** NAME
def validate_name(name)
    name = name.strip
    raise InvalidInput, "That's not a name pal, try some letters." if name.empty?
    name
end

def user
    puts "What's your name, friend?"
    name = gets.strip
    validate_name(name)
rescue InvalidInput => e
    puts "Invalid name, error details: #{e.message}"
    retry
end



#***GOAL

def validate_goal(goal)
    raise InvalidInput, "You can do better than that, we need some numbers here." if goal.empty?
    raise InvalidInput, "Only numbers, thanks." if goal.to_i == 0 and goal != "0"
    raise FloatNotInt, "We're not splitting hairs here. Only whole numbers thanks." if (goal.to_f % 1) != 0
    goal.to_i
end

def goal
    puts "How many points will you aim for?"
    goal = gets.strip
    validate_goal(goal)
    rescue InvalidInput => e 
        puts "Invalid goal, error details: #{e.message}"
        retry
    rescue FloatNotInt => e
        puts "Invalid goal, error details: #{e.message}"
        retry
end

#*** TIME


