describe "Validate time actually validates time input" do
    it "should return a valid time if a valid time is given" do
        expect(validate_time_of_day("lunch")).to eq("lunch")
    end
    
    it "should strip spaces from a time" do
        expect(validate_time_of_day("  breakfast  ")).to eq("breakfast")
    end

    it "should retrn InvalidInput" do
        expect{validate_time("hello")}.to raise_error(InvalidInput)
    end
end