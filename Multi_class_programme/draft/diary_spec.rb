require "diary"
require "diary_entry"

RSpec.describe Diary do 

  context "has no diary entries" do
    xit "returns empty list" do 
      diary = Diary.new 
      expect(diary.all).to eq []
    end 
  end 

  context "given no diary entries " do 
    it "returns word count of 0" do
      diary = Diary.new 
      expect(diary.total_words).to eq 0 
    end 
  end 

  context "Given multiple diary entries " do 
    it "returns total word count" do
      diary = Diary.new 
      diary_entry1 = DiaryEntry.new("my_title1","my_contents1")
      diary.add(diary_entry1)
      diary_entry2 = DiaryEntry.new("my_title2","my_contents2")
      diary.add(diary_entry2)
      diary_entry3 = DiaryEntry.new("my_title3","my_contents3")
      diary.add(diary_entry3)
      expect(diary.all).to eq ["my_contents1","my_contents2","my_contents3"]
    end 
  end 
end 