def get_most_common_letter(text)
  counter = Hash.new(0)
  text.delete('^a-z0–9').chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
end
puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Discovery Debugging code:

# def get_most_common_letter(text)
#   counter = Hash.new(0)
#   p "at the start counter is #{counter}"
#   text.delete('^a-z0–9').chars.each do |char|
#     counter[char] += 1
#   end
#   p "before sorting counter is #{counter}"
#   counter.to_a.sort_by { |k, v| v }[-1][0]
#   p "counter 00 is #{counter.to_a.sort_by { |k, v| v }[-1][0]}"
# end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"