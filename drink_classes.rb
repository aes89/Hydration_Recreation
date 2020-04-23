class Drink
    attr_accessor :name,:breakfastpoints,
    def initialize(name, breakfastpoints, lunchpoints, dinnerpoints)
        @name = name
        @breakfastpoints = breakfastpoints
        @lunchpoints = lunchpoints
        @dinnerpoints = dinnerpoints
    end
end

class Water < Drink
    def initialize
        super("water",10,10,10)
        
    end
end
