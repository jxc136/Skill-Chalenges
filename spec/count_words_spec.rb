require 'count_words'

RSpec.describe "count_words" do 
  
  it "returns a length of 0 for empty string" do
    result = count_words("")
    expect(result).to eq 0

  end 

  it "returns a length of 1 for a one word string" do
    result = count_words("test")
    expect(result).to eq 1

  end 

  it "returns a length of 2 for a two word string" do
    result = count_words("my test")
    expect(result).to eq 2

  end 

  it "returns a 5 for a five word string that includes a number" do
    result = count_words("this is my test 4")
    expect(result).to eq 5

  end 

  it "returns a 5 for a five word string with a space at the start" do
    result = count_words(" this is my test 4")
    expect(result).to eq 5

  end 
end 

# /Users/josh/projects/Makers-Week-One/Skill-Challenges/spec/count_words_spec.rb
# /Users/josh/projects/Makers-Week-One/Skill-Challenges/lib/count_words.rb