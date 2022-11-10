def read_speed(str)

  word_count = str.split.count
  words_per_hour = word_count / 12000
  words_per_min = (word_count % 12000) / 200
  words_per_second = ((word_count.to_f % 200 / 200) * 60).to_i
  
"#{words_per_hour} hours, #{words_per_min} minutes, #{words_per_second} seconds"
end 