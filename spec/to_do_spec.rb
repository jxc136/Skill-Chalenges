require "to_do"

RSpec.describe "to_do method" do

 context "Text contains an empty string" do 
   it "returns false" do 
     result = to_do("")
     expect(result).to eq false
   end 
  end 

  context "Text contains a single word string that doesn't contain #TODO." do 
    it "returns false" do
      result = to_do("hello")
      expect(result).to eq false
    end 
  end

  context "Text contains a single word string that DOES contain #TODO." do 
    it "returns true" do
      result = to_do("#TODO")
      expect(result).to eq true
    end 
  end 

  context "Text contains a string that contains #TODO twice." do 
    it "returns true" do
      result = to_do("#TODO #TODO")
      expect(result).to eq true
    end 
  end 

  context "Text contains a string that contains TODO without a hash" do 
    it "returns false" do
      result = to_do("TODO")
      expect(result).to eq false
    end 
  end 

  context "Text contains a string that contains #todo (has hash, lowercase)" do 
    it "returns false" do
      result = to_do("#todo")
      expect(result).to eq false
    end 
  end 

  context "Text contains a string that contains #todo nested within another word (eg he#TODOllo)" do 
    it "returns true" do
      result = to_do("he#TODOllo")
      expect(result).to eq true
    end 
  end 

  context "All instances of #TODO have a separate word nested within them." do 
    it "returns false" do
      result = to_do("#ThelloODO #ThelloODO")
      expect(result).to eq false
    end 
  end 

end

