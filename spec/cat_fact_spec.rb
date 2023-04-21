require "cat_fact"

describe CatFacts do
  it "takes a randome cat fact from the site" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"The longest living cat on record according to the Guinness Book belongs to the late Creme Puff of Austin, Texas who lived to the ripe old age of 38 years and 3 days!","length":165}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: The longest living cat on record according to the Guinness Book belongs to the late Creme Puff of Austin, Texas who lived to the ripe old age of 38 years and 3 days!"
  end
end