class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will subtract two numbers."
    @terminal.puts "Please enter a number"
    num_1 = @terminal.gets.to_i
    @terminal.puts "Please enter another number"
    num_2 = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    num_3 = (num_1 - num_2)
    @terminal.puts "#{num_1} - #{num_2} = #{num_3}"
  end
end


