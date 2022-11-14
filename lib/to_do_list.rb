class To_Do_List

  def initialize
    @list = []
   end 
 
   def add (text) #text is a string
    fail "no entry detected" unless text.length > 0 
     # no return value 
     # pushes any todo actions into the task list 
     @list.push(text)
   end
 
   def remove (entry) #text is a string contained within the task list array
     # no return value 
     # deletes the specified string from the to_do list array 
     @list.delete(entry)
   end
 
   def display 
     @list
   end 

end 