require "to_do_list"

RSpec.describe To_Do_List do

  context "empty list" do
    it "returns empty to do list" do
      to_do_list = To_Do_List.new 
      expect(to_do_list.display).to eq []
    end 
  end 

  context "single entry list" do
    it "returns a to do list with a single entry" do
      to_do_list = To_Do_List.new 
      to_do_list.add("wash dishes") 
      expect(to_do_list.display).to eq ["wash dishes"]
    end 
  end     

  context "raises error if user tries to add an empty string to list." do
    it "fails" do
      to_do_list = To_Do_List.new  
      expect { to_do_list.add("") }.to raise_error "no entry detected"
    end 
  end
  
  context "multiple to-dos" do
    it "returns a to do list with a multiple entries" do
      to_do_list = To_Do_List.new  
      to_do_list.add("walk the dog") 
      to_do_list.add("tidy the bedroom")  
      expect(to_do_list.display).to eq ["walk the dog", "tidy the bedroom"]
    end 
  end  
  
  context "deletes the only entry from an array, returns empty array" do
    it "returns a to do list with a multiple entries" do
      to_do_list = To_Do_List.new  
      to_do_list.add("walk the dog") 
      to_do_list.remove("walk the dog") 
      expect(to_do_list.display).to eq []
    end 
  end  

  context "deletes specified entry from array containing multiple strings" do
    it "displays list minus removed item" do
      to_do_list = To_Do_List.new  
      to_do_list.add("walk the dog") 
      to_do_list.add("wash dishes") 
      to_do_list.add("clean car") 
      to_do_list.remove("walk the dog") 
      expect(to_do_list.display).to eq ["wash dishes", "clean car" ]
    end 
  end 

  context "removes an entry from list, then adds it again." do
    it "displays re-added entry at end of list" do
      to_do_list = To_Do_List.new  
      to_do_list.add("walk the dog") 
      to_do_list.add("wash dishes") 
      to_do_list.add("clean car") 
      to_do_list.remove("walk the dog") 
      to_do_list.add("walk the dog") 
      expect(to_do_list.display).to eq ["wash dishes", "clean car", "walk the dog"  ]
    end 
  end 
end 