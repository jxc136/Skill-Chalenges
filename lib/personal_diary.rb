def make_snippet(str)
  strsplit = str.split
  strlength = strsplit.length
  strfive = strsplit.take(5)

  if strlength <= 5 then str 
  else "#{strfive.join(' ')}..."
  end 
end 