def letter_percentages(string)
  lowercase = string.count("a-z")
  uppercase = string.count("A-Z")
  total = string.split("").count
  other = total - (uppercase + lowercase)
  percentages = {lowercase: " ", uppercase: " ", neither: " "}
  percentages[:lowercase] = (lowercase.to_f/total.to_f) * 100
  percentages[:uppercase] = (uppercase.to_f/total.to_f) * 100
  percentages[:neither] = (other.to_f/total.to_f) * 100
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }