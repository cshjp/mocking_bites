require "calculator"

describe InteractiveCalculator do
  it "subtracts two numbers given to it by the user" do
    fake_terminal = double :terminal
    expect(fake_terminal).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(fake_terminal).to receive(:puts).with("Please enter a number")
    expect(fake_terminal).to receive(:gets).and_return("4")
    expect(fake_terminal).to receive(:puts).with("Please enter another number")
    expect(fake_terminal).to receive(:gets).and_return("3")
    expect(fake_terminal).to receive(:puts).with("Here is your result:")
    expect(fake_terminal).to receive(:puts).with("4 - 3 = 1")
    interactive_calculator = InteractiveCalculator.new(fake_terminal)
    interactive_calculator.run
  end
end


# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1