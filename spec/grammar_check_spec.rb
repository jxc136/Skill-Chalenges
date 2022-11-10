require 'grammar_check'

RSpec.describe 'grammar_check' do
  it "An empty string returns false " do
    result = grammar_check("")
    expect(result).to eq false 
  end 

  it " 2 character string consisting of a capitalised letter as first character and 
  a full stop returns True " do
    result = grammar_check("A.")
    expect(result).to eq true
  end 

  it " 2 character string consisting of a capitalised letter as first character and 
  a question mark returns True " do
    result = grammar_check("A?")
    expect(result).to eq true
  end 

  it " 2 character string consisting of a capitalised letter as first character and 
  an exclamation mark returns True " do
    result = grammar_check("A!")
    expect(result).to eq true
  end 

  it " 2 character string consisting of a non capitalised letter as first character and 
  a full stop returns False " do
    result = grammar_check("a.")
    expect(result).to eq false
  end 

  it " 2 character string consisting of a capitalised letter
  as first character and a non capitalised letter as final character returns False.  " do
    result = grammar_check("Aa")
    expect(result).to eq false
  end 

  it "A 2 character string consisting of a capitalised letter as first character and
  a grammatically incorrect final character returns False." do
    result = grammar_check("A-")
    expect(result).to eq false
  end 

  it "A string starting with a space, followed by a capital letter and ending with a 
  full stop returns False." do
    result = grammar_check(" A.")
    expect(result).to eq false
  end 

  it "A string starting with a capitalised letter as first character, ending with a full stop, 
  but with an accidental space returns false" do
    result = grammar_check("A. ")
    expect(result).to eq false
  end 

end 