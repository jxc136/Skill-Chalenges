require 'to_do_list'
require 'to_do'

RSpec.describe TodoList do

  context "no to do's" do 
    it "complete and incomplete are empty arrays" do 
      to_do_list = TodoList.new
      expect(to_do_list.complete).to eq []
      expect(to_do_list.incomplete).to eq []
    end 
  end 

  context "adds an incomplete entry" do
    it "returns an array with 2 entries (strings) in it" do 

      to_do_list = TodoList.new

      to_do1 = Todo.new("wash dishes")
      to_do_list.add(to_do1.task)

      to_do2 = Todo.new("walk dog")
      to_do_list.add(to_do2.task)

      expect(to_do_list.incomplete).to eq ["wash dishes","walk dog"]
    end
  end 

  context "it completes an entry" do
    it "returns complete entry" do

      to_do_list = TodoList.new

      to_do1 = Todo.new("wash dishes")
      to_do1.mark_done!

      expect(to_do1.done?).to eq true
    
    end
  end 

  context "it adds one complete and one incomplete entry to list entry" do
    it "returns complete and comple entries" do

      to_do_list = TodoList.new

      to_do1 = Todo.new("wash dishes")
      to_do1.mark_done!
      to_do_list.add(to_do1.task)

      to_do2 = Todo.new("walk dog")
      to_do_list.add(to_do2.task)

      expect(to_do_list.complete).to eq ["wash dishes: done!"]
      expect(to_do_list.incomplete).to eq ["walk dog"]
    end
  end 


  context "moves entry from incomplete to complete list " do
    it "completes entry" do

      to_do_list = TodoList.new

      to_do2 = Todo.new("wash dishes")
      to_do_list.add(to_do2.task)

      to_do1 = Todo.new("wash dishes")
      done = to_do1.mark_done!
      to_do_list.add(done)

      expect(to_do_list.complete).to eq ["wash dishes: done!"]
      expect(to_do_list.incomplete).to eq []
    end
  end 

  context "does not accept duplicate incomplete entries " do
    it "completes entry" do

      to_do_list = TodoList.new

      to_do1 = Todo.new("wash dishes")
      to_do_list.add(to_do1.task)

      to_do2 = Todo.new("wash dishes")
      to_do_list.add(to_do2.task)

      expect(to_do_list.incomplete).to eq ["wash dishes"]
    end
  end 

  context "multiple additions and removals " do
    it "correctly deltes and adds to arrays " do

      to_do_list = TodoList.new

      to_do2 = Todo.new("wash dishes")
      to_do_list.add(to_do2.task)

      to_do1 = Todo.new("wash dishes")
      done = to_do1.mark_done!
      to_do_list.add(done)

      expect(to_do_list.complete).to eq ["wash dishes: done!"]
      expect(to_do_list.incomplete).to eq []
    end
  end 

  context "new instance of completed task" do 

    it "does not overwright completed task" do

      to_do_list = TodoList.new

        to_do1 = Todo.new("wash dishes")
        done = to_do1.mark_done!
        to_do_list.add(done)

        to_do2 = Todo.new("wash dishes")
        to_do_list.add(to_do2.task)


        expect(to_do_list.complete).to eq ["wash dishes: done!"]
        expect(to_do_list.incomplete).to eq ["wash dishes"]

    end 

  end 


  context "multiple completes and incompletes " do
    it "give up" do

      to_do_list = TodoList.new

      
      to_do1 = Todo.new("wash dishes")
      done = to_do1.mark_done!
      to_do_list.add(done)

      to_do2 = Todo.new("walk dog")
      to_do_list.add(to_do2.task)

      to_do3 = Todo.new("clean car")
      done3 = to_do3.mark_done!
      to_do_list.add(done3)

      to_do4 = Todo.new("cook dinner")
      to_do_list.add(to_do4.task)

      to_do_list.give_up!

      expect(to_do_list.complete).to eq ["wash dishes: done!", "clean car: done!", "walk dog: done!", "cook dinner: done!"]
      expect(to_do_list.incomplete).to eq []
    end
  end 

end 