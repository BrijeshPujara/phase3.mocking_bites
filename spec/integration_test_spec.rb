require "music_library"
require "track"

# adds tracks and lists them
# searches list of tracks and matches keywords

RSpec.describe "Integration tests" do
  it "adds tracks and lists them" do
    lib = MusicLibrary.new 
    track = Track.new("title_1", "artist_1")
    track1 = Track.new("title_2", "artist_2")
    lib.add(track)
    lib.add(track1)
    expect(lib.all).to eq [track, track1]  
  end

  it "searches list of tracks and matches keywords" do 
    lib = MusicLibrary.new 
    track = Track.new("title_1", "artist_1")
    track1 = Track.new("title_2", "artist_2")
    lib.add(track)
    lib.add(track1)
    expect(lib.search("1")).to eq [track]
  end

end

