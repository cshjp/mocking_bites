require "string_repeater"

describe StringRepeater do
  it "repeats the string given by the user a selceted number of times" do
    fake_terminal = double :terminal
    expect(fake_terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter a string")
    expect(fake_terminal).to receive(:gets).and_return("Twix")
    expect(fake_terminal).to receive(:puts).with("Please enter a number of repeats")
    expect(fake_terminal).to receive(:gets).and_return("10")
    expect(fake_terminal).to receive(:puts).with("Here is your result:")
    expect(fake_terminal).to receive(:puts).with("Twix"*10)
    string_repeater = StringRepeater.new(fake_terminal)
    string_repeater.run
  end
end

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX