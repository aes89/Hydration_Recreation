require_relative "validate_goal"

#****USER INPUTS GOAL TESTING 

describe "Goal validation should correctly throw errors if input is not an int" do
    it "should take an string of an int and return an int" do
        expect(validate_num("1    ")).to eq(1)
    end
    it "should return InvalidInput" do
        expect{validate_num("     ")}.to raise_error(InvalidInput)
    end
    it "should return FloaNotInt" do
        expect{validate_num("2.2")}.to raise_error(FloatNotInt)
    end
    it "should return InvalidInput" do
        expect{validate_num("hello")}.to raise_error(InvalidInput)
    end
end