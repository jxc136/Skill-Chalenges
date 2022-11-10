def grammar_check(str)
  if str.size == 0 then false 
  elsif str[0] == " " || str[-1] == " " then false 
  elsif str[0].upcase == str[0] && str[-1] == "." || str[-1] == "?" || str[-1] == "!" then true 
  else false 
end   
end 