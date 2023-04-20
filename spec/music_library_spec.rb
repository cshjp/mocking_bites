require "music_library"

describe MusicLibrary do 
  it "adds and lists tracks" do
    library = MusicLibrary.new
    track1 = double :track1
    track2 = double :track2
    library.add(track1)
    library.add(track2)
    expect(library.all).to eq [track1, track2]
  end

  it "searches tracks by title" do
    library = MusicLibrary.new
    track1 = double :track, matches?: true
    track2 = double :track, matches?: false
    library.add(track1)
    library.add(track2)
    expect(library.search("two")).to eq [track1]
  end
end