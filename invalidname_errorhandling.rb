class InvalidNameError < StandardError
end
class FloatNotInt < StandardError
end


#*** NAME
def validate_name(name)
    name = name.strip
    raise InvalidNameError, "That's not a name pal, try some letters." if name.empty?
    name
end

def user
    puts "What's your name, friend?"
    name = gets.chomp
    validate_name(name)
rescue InvalidNameError => e
    puts "Invalid name, error details: #{e.message}"
    retry
end


#***GOAL

def validate_goal(goal)
    goal = goal.strip
    raise InvalidNameError, "You can do better than that, we need some numbers here." if goal.empty?
    raise FloatNotInt, "We're not splitting hairs here. Only whole numbers thanks." if goal.is_a? Float
    goal.to_i
end

def goal
    puts "How many points will you aim for?"
    goal = gets.chomp
    validate_goal(goal)
    rescue InvalidNameError => e
        puts "Invalid goal, error details: #{e.message}"
        retry
    rescue FloatNotInt => e
        puts "Invalid goal, error details: #{e.message}"
        retry
end

