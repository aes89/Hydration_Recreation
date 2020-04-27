#*** USER INPUTS TIME TESTS
require_relative "validate_time"


describe "Validate time" do
    it "should return a valid time if a valid time is given" do
        expect(validate_time("breakfast")).to eq("breakfast")
        expect(validate_time("lunch")).to eq("lunch")
        expect(validate_time("dinner")).to eq("dinner")
    end
    
    it "should strip spaces from a time" do
        expect(validate_time("  breakfast  ")).to eq("breakfast")
    end

    it "should return InvalidInput if passed incorrect argument" do
        expect{validate_time("hello")}.to raise_error(InvalidInput)
    end

    it "should return InvalidInput" do
        expect{validate_time("?!")}.to raise_error(InvalidInput)
    end

    it "should return InvalidInput" do
        expect{validate_time("    ")}.to raise_error(InvalidInput)
    end

    it "should return InvalidInput" do
        expect{validate_time("745")}.to raise_error(InvalidInput)
    end
end