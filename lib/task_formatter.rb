class TaskFormatter
  def initialize(task) # task is an instance of Task
    @task = task
  end

  def format
    if @task.complete? == false
      return "- [ ] #{@task.title}"
    else
      return "- [x] #{@task.title}"
    end
    # Returns the task formatted as a string.
    # If the task is not complete, the format is:
    # - [ ] Task title
    # If the task is complete, the format is:
    # - [x] Task title
  end
end