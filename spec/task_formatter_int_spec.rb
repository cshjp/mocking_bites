require "task_formatter"
require "task"

describe "integration" do
  context "when given a task that is incomplete" do
    it "returns the task formatted in the correct way" do
      task = Task.new("get milk")
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] get milk"
    end
  end
  context "when given a task that is complete" do
    it "returns the task formatted in the correct way" do
      task = Task.new("get milk")
      task.mark_complete
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] get milk"
    end
  end
end