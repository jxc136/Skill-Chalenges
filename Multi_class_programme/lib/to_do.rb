class Todo

  def initialize(task) # task is a string
    @task = task
    @task_complete = nil
  end

  def task
    return @task
  end

  def mark_done!
    return @task += ": done!"
  end

  def done?
    if @task.include?(": done!") then true 
    else return false 
    end
  end
end 