require_relative "./invalidname_errorhandling.rb"

describe "Validate name actually validates names" do
    it "should return a valid name if a valid name is given" do
        expect(validate_name("Jess")).to eq("Jess")
    end
    
    it "should strip spaces from a name" do
        expect(validate_name("  Jess  ")).to eq("Jess")
    end
end

describe "Goal validation should correctly throw errors if not ints" do
    it "should take an string of an int and return an int" do
        expect(validate_goal("1    ")).to eq(1)
    end
    
    it "should return a InvalidNameError" do
        expect{validate_goal("     ")}.to raise_error(InvalidNameError)
    end
end
