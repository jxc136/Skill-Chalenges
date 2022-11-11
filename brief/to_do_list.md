<!-- As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them. -->

> # Single-Class Programs Design Recipe
> 
> ## 1. Describe the Problem
> 
> User wants to keep track of their tasks 
> Programme needs to add tasks and see a list of all tasks 
> 
> ## 2. Design the Class Interface
> 
> The interface of a class includes:
```ruby 
Class To_Do_List

  def initialize
   # creates an empty task list 
  end 

  def add (text) #text is a string
    # no return value 
    # pushes any todo actions into the task list 
  end

  def display 
    # throws an exception if task list is empty
    # otherwise, returns a list of all tasks 
  end 

end

``` 

> ## 3. Create Examples as Tests
```ruby 

# One - returns empty to do list:

to_do_list = To_Do_List.new 
to_do_list.display #  => []

# Two - returns a to do list with a single entry:

to_do_list = To_Do_List.new 
to_do_list.add("wash dishes") 
to_do_list.display #  => [wash dishes]

# Three - raises error if user tries to add an empty string to list. y:

to_do_list = To_Do_List.new 
to_do_list.add("") 
to_do_list.display #  => []

# Four - returns a to do list with a multiple entries:
to_do_list = To_Do_List.new 
to_do_list.add("walk the dog") 
to_do_list.add("tidy bedroom") 
to_do_list.display #  => ["walk the dog", "tidy the bedroom"]

# Five - accepts multiple entries, seperate by a comma, and adds them as seperate entries:
to_do_list = To_Do_List.new 
to_do_list.add("wash dishes") 
to_do_list.add("walk the dog, tidy bedroom") 
to_do_list.display #  => ["wash dishes, walk the dog", "tidy the bedroom"]

# Six - no duplicate entries 
to_do_list = To_Do_List.new 
to_do_list.add("wash dishes") 
to_do_list.add("wash dishes") 
to_do_list.display #  => ["wash dishes"]

```
> These are examples of the class being used with different initializer
> arguments, method calls, and how it should behave.
> 
> For complex challenges you might want to come up with a list of examples first
> and then test-drive them one by one. For simpler ones you might just dive
> straight into writing a test for the first example you want to address.
> 
> ## 4. Implement the Behaviour
> 
> For each example you create as a test, implement the behaviour that allows the
> class to behave according to your example.
> 
> At this point you may wish to apply small-step test-driving to manage the
> complexity. This means you only write the minimum lines of the example to get
> the test to fail (red), then make it pass (green) and refactor, before adding
> another line to the test until it fails, then continue.
> 
> Then return to step 3 until you have addressed the problem you were given. You
> may also need to revise your design, for example if you realise you made a
> mistake earlier.
