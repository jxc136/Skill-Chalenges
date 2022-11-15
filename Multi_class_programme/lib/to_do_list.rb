class TodoList
  def initialize
    @incomplete = []
    @complete = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing

    if todo.include?(": done!") then 
      @complete.push(todo)
      @incomplete.each do | entry |
        @incomplete.delete(entry) if @complete.join('').include?(entry)
      end 
    else @incomplete.push(todo) unless @incomplete.include?(todo)
    end
  end

  def incomplete
    @incomplete
  end

  def complete
    @complete
  end

  def give_up!
   done = @incomplete.map do |entry|
      entry += ": done!"
    end 
    @complete.concat(done)
    @incomplete.clear
  end
end