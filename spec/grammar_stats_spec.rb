require 'grammar_stats'

RSpec.describe GrammarStats do
  it "constructs" do 
    grammar_stats = GrammarStats.new
    check1 = grammar_stats.check("Here is some text.")
    expect(check1).to eq true
    expect(grammar_stats.percentage_good).to eq 100
  end 

  it "grammar check is run twice, fails once " do 
    grammar_stats = GrammarStats.new
    check1 = grammar_stats.check("Here is some text.")
    check2 = grammar_stats.check ("fail")
    expect(check1).to eq true
    expect(check2).to eq false
    
  end 

  it "returns 50% after grammar check is run twice and returns true once " do 
    grammar_stats = GrammarStats.new
    check1 = grammar_stats.check("Here is some text.")
    check2 = grammar_stats.check ("fail")
    expect(check1).to eq true
    expect(check2).to eq false
    check1
    check2
    expect(grammar_stats.percentage_good).to eq 50
    
  end 

  it "returns 25% after grammar check is run 4 times and returns true once" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Here is some text.")
    grammar_stats.check ("fail")
    grammar_stats.check("still failing")
    grammar_stats.check ("last time failing")
    expect(grammar_stats.percentage_good).to eq 25
  end 

  it "returns 0% after grammar check is run 4 times and returns true once" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("first fail")
    grammar_stats.check ("fail")
    grammar_stats.check("still failing")
    grammar_stats.check ("last time failing")
    expect(grammar_stats.percentage_good).to eq 0
  end 

  it "returns 0% after 2 words starting with a space on one side of the string but would otherwise pass the check do" do
    grammar_stats = GrammarStats.new
    grammar_stats.check(" First fail!")
    grammar_stats.check ("Second Fail? ")
    expect(grammar_stats.percentage_good).to eq 0
  end 
end 

