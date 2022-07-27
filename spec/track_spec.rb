require "track"

# .matches? either title or artist
RSpec.describe Track do
  it "checks if keyword matches either title or artist" do
    track1 = Track.new("track1", "artist1")
    expect(track1.matches?("track1")).to eq true
  end
end
