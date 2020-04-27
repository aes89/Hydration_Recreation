#*** VALIDATES INPUT OF NUMBER OF GLASSES OF DRINKS

class InvalidInput < StandardError
end

class FloatNotInt < StandardError
end

#WATER

def glasses_of_water_validation
    slowly do
        "\nHow many glasses of #{Rainbow("water").blue}?\n"
    end
    water = gets.strip
    validate_num(water)
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

#JUICE

def glasses_of_juice_validation
    slowly do
        "\nHow many glasses of #{Rainbow("juice").orange}?\n"
    end
    juice = gets.strip
    validate_num(juice)
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

# CAFFINATED DRINKS
def glasses_of_caffinated_validation
    slowly do
        "\nHow many glasses of #{Rainbow("tea").brown} or #{Rainbow("coffee").brown}?\n"
    end
    caffinated = gets.strip
    validate_num(caffinated)
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

#ALCOHOLIC DRINKS
def glasses_of_alcoholic_validation
    slowly do
        "\nHow many glasses wth #{Rainbow("alcohol").green}?\n"
    end
    alcoholic = gets.strip
    validate_num(alcoholic)
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

#SODA DRINKS
def glasses_of_soda_validation
    slowly do
        "\nHow many glasses of soda?\n"
    end
    soda = gets.strip
    validate_num(soda)
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

#OTHER DRINKS
def glasses_of_other_validation
    slowly do
        "\nAny other glasses of undefined fluids?\n"
    end
    other = gets.strip
    validate_num(other)
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
