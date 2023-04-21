require "task_list"
require "task"
require "task_formatter"

RSpec.describe "tasks integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_formatter_1 = TaskFormatter.new(task_1)
    task_formatter_2 = TaskFormatter.new(task_2)
    task_list.add(task_formatter_1.format)
    task_list.add(task_formatter_2.format)
    expect(task_list.all).to eq ["- [ ] Walk the dog", "- [ ] Walk the cat"]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end
end
