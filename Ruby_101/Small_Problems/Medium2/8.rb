def is_featured?(integer)
  return false unless integer.odd?
  return false unless integer % 7 == 0
  return false unless integer.to_s.chars.uniq == integer.to_s.chars
  true
end

def featured(integer)
  #odd, multiple of 7, digits occur once each
  next_featured = integer + 1
  until is_featured?(next_featured)
    next_featured += 1
    if next_featured > 9_876_543_210 
      puts "There's no possible featured number for this integer"
      return
    end 
  end
  next_featured
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)