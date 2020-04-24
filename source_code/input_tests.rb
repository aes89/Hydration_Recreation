#**** USER INPUTS NAME TESTING

require_relative "errorhandling.rb"

describe "Validate name actually validates names" do
    it "should return a valid name if a valid name is given" do
        expect(validate_name("Jess")).to eq("Jess")
    end
    
    it "should strip spaces from a name" do
        expect(validate_name("  Jess  ")).to eq("Jess")
    end
end

#****USER INPUTS GOAL TESTING -- 24 and 27 aren't working, not passing to them  manual testing shows that events are passing that errors are being handled as expected

describe "Goal validation should correctly throw errors if input is not an int" do
    it "should take an string of an int and return an int" do
        expect(validate_goal("1    ")).to eq(1)
    end
    it "should return InvalidName" do
        expect{validate_goal("     ")}.to raise_error(InvalidName)
    end
    it "should return FloaNotInt" do
        expect{validate_goal("2.2")}.to raise_error(FloatNotInt)
    end
    it "should return InvalidName" do
        expect{validate_goal("hello")}.to raise_error(InvalidName)
    end
end


#****TIME TESTING
