require "personal_diary"
RSpec.describe "make snippet method" do
  it "returns an empty string" do
     result = make_snippet("")
     expect(result).to eq ""
  end 

  it "returns a single word string" do
    result = make_snippet("word")
    expect(result).to eq "word"
 end 

 it "returns a five word string" do
  result = make_snippet("this string has five words")
  expect(result).to eq "this string has five words"
end 

it "returns first five words followed by ... for a ten word string" do
  result = make_snippet("this string now has a length of exactly ten words")
  expect(result).to eq "this string now has a..."
end 

it "returns first five words followed by ... for a 10 word string with punctuation" do
  result = make_snippet("this string - now has a length of exactly ten words")
  expect(result).to eq "this string - now has..."
end 
end 