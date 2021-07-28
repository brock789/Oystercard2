require "station.rb"

describe Station do
  
  let(:station) { Station.new("Oxford St", 3) }
  
  describe "#name" do
    it "returns station name" do
    expect(station.name).to eq("Oxford St")
    end
  end

  describe "#zone" do
    it "returns zone" do
    expect(station.zone).to eq(3)
    end
  end

end