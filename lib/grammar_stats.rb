class GrammarStats
  def initialize
  @accumalator = 0
  @true_count = 0
  end

  def check(text)
    @accumalator += 1 
    if text.size == 0 then false 
    elsif text[0] == " " || text[-1] == " " then false 
    elsif text[0].upcase == text[0] && text[-1] == "." || text[-1] == "?" || text[-1] == "!" then @true_count += 1
    else false 
    end 

    if text.size == 0 then false 
    elsif text[0] == " " || text[-1] == " " then false 
    elsif text[0].upcase == text[0] && text[-1] == "." || text[-1] == "?" || text[-1] == "!" then true
    else false 
    end 
    # p "true count is #{@true_count}"
  end

  def percentage_good
  #  p "true count is #{@true_count} and accumlator is #{@accumalator}"
    return  ((@true_count.to_f / @accumalator.to_f) * 100.ceil).to_i
    
  end

end



# grammar_stats = GrammarStats.new
# grammar_stats.check ("Pass!")
# grammar_stats.check ("fail")
# p grammar_stats.percentage_good 