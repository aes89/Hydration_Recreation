
class DrinkPoints
    def initialize (amount, breakfastpoints, lunchpoints, dinnerpoints, breakfastMessage, lunchMessage, dinnerMessage)
        @breakfastpoints = breakfastpoints
        @lunchpoints = lunchpoints
        @dinnerpoints = dinnerpoints
        @breakfastMessage = breakfastMessage
        @lunchMessage = lunchMessage
        @dinnerMessage = dinnerMessage
    end

    def breakfast
        puts @breakfastMessage
        @amount = @amount * @breakfastpoints
    end

    def lunch
        puts @lunchMessage
        @amount = @amount * @lunchpoints
    end

    def dinner
        puts @dinnerMessage
        @amount = @amount * @dinnerpoints
    end
end

class WaterPoints < DrinkPoints
    def initialize (amount)
        super   @breakfastpoints = 125, @lunchpoints = 125, @dinnerpoints = 125, @amount = amount, @breakfastMessage, @lunchMessage, @dinnerMessage
    end

    def permanent
        puts "Water is always a great idea"
        @breakfastpoints * @amount
    end
end

class JuicePoints < DrinkPoints
    def initialize (amount)
        super @breakfastpoints = 110, @lunchpoints = 90, @dinnerpoints = 70, @breakfastMessage = "Juice is optimal morning drink!", @lunchMessage = "Not ideal, but I'll let it slide", @dinnerMessage = "Naughty naughty, less of that please", @amount = amount
    end
end

class CaffinatedPoints < DrinkPoints
    def initialize (amount)
        super @breakfastpoints = 100, @lunchpoints = 50, @dinnerpoints = (-10), @amount = amount, @breakfastMessage = "Up and at 'em!", @lunchMessage = "Not ideal, but I'll let it slide", @dinnerMessage = "Uh oh, looks like you lost points here. Good liuck sleeping tonight #{@name}."
    end
end

class AlcoholicPoints < DrinkPoints
    def initialize (amount)
        super @breakfastpoints = (-50), @lunchpoints = 20, @dinnerpoints = (50), @amount = amount, @breakfastMessage = "In the morning? #{@name}, maybe visit this site: AA", @lunchMessage = "Not ideal, but I'll let it slide", @dinnerMessage = "Not needed but preferable in the evening."
    end
end

class SodaPoints < DrinkPoints
    def initialize (amount)
        super @breakfastpoints = (-10), @lunchpoints = 50, @dinnerpoints = 50, @amount = amount, @breakfastMessage = "In the morning? Give 10 points back. Sheesh.", @lunchMessage = "Not ideal, but I'll let it slide", @dinnerMessage = "Not ideal, but I'll let it slide"
    end
end

class OtherPoints < DrinkPoints
    def initialize (amount)
        super @breakfastpoints = 80, @lunchpoints = 80, @dinnerpoints = 80, @amount = amount, @breakfastMessage = "Not sure what this was #{@name}, you can have some points.", @lunchMessage = "NNot sure what this was #{@name}, you can have some points.", @dinnerMessage = "Not sure what this was #{@name}, you can have some points."
    end
end

