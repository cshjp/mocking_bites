require "task_formatter"

describe TaskFormatter do
  context "when given a task that is incomplete" do
    it "returns the task formatted in the correct way" do
      task = double :task, title: "get milk", complete?: false
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] get milk"
    end
  end
  
  context "when given a task that is complete" do
    it "returns the task formatted in the correct way" do
      task = double :task, title: "get milk", complete?: true
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] get milk"
    end
  end
end