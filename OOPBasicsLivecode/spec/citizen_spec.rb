require_relative "../citizen.rb"

describe Citizen do
  describe "#can_vote?" do
    it "should return false if the citizen is under 18 years old" do
      citizen = Citizen.new("","",15)
      expect(citizen.can_vote?).to eq(false)
    end

    it "should return true if the citizen is over 18 years old" do
      citizen = Citizen.new("","",19)
      expect(citizen.can_vote?).to eq(true)
    end
  end

  describe "#full_name" do
    it "should return the full name capitalized" do
      citizen = Citizen.new("kEllY", "sLater", 50)
      expect(citizen.full_name).to eq("Kelly Slater")
    end
  end
end