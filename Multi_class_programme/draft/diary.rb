# File: lib/diary.rb
class Diary
  def initialize
    @diarylist = {}
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
    @diarylist[(entry.title.to_sym)] = {contents: (entry.contents), word_count: (entry.count_words)} 
    
  end

  def all 
    @diarylist.collect {|key, value| @diarylist[key][(value[:contents])]}
  end

  def count_words
    return 
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.

    return(count_words/wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end
