#**** USER INPUTS NAME TESTING
require_relative "validate_name"

describe "Validate name actually validates names" do
    it "should return a valid name if a valid name is given" do
        expect(validate_name("Jess")).to eq("Jess")
    end
    
    it "should strip spaces from a name" do
        expect(validate_name("  Jess  ")).to eq("Jess")
    end
end
