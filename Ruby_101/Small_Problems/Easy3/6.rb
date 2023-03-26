def xor?(statement_1, statement_2)
  if (statement_1 == true && statement_2 == false) || (statement_1 == false && statement_2 == true)          
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false