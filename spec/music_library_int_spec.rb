require "music_library" 
require "track"

describe "integration" do
  it "adds and lists tracks added to it" do
    library = MusicLibrary.new
    track1 = Track.new("title1", "artist1")
    track2 = Track.new("title2", "artist2")
    library.add(track1)
    library.add(track2)
    expect(library.all).to eq [track1, track2]
  end

  it "searches tracks by title" do
    library = MusicLibrary.new
    track1 = Track.new("one two three", "four five six")
    track2 = Track.new("seven eight nine", "ten eleven twelve")
    library.add(track1)
    library.add(track2)
    expect(library.search("two")).to eq [track1]
  end
end