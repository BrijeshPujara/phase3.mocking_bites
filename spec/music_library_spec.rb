require "music_library"

# adds tracks and lists them
# searches tracks by keyword

RSpec.describe MusicLibrary do
  it "adds tracks and lists them" do 
    lib = MusicLibrary.new 
    track1 = double :track
    track2 = double :track
    lib.add(track1)
    lib.add(track2)
    expect(lib.all).to eq [track1, track2]  
  end

  it "searches tracks by keyword" do 
    lib = MusicLibrary.new 
    track1 = double :track
    # track1 = double :track, matches?: true
    expect(track1).to receive(:matches?).with("1").and_return(true)
    track2 = double :track
    # track2 = double :track, matches?: false
    expect(track2).to receive(:matches?).with("1").and_return(false)
    lib.add(track1)
    lib.add(track2)
    expect(lib.search("1")).to eq [track1]  
  end


end
