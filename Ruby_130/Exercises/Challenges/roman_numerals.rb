=begin
only need to go to 3000
1000 is M
500 is D
100 is C
50 is L
10 is X
5 is V
1 is I
A
initialize a string `` to `result_numeral`
initialize a hash, with the key as the roman numeral value and the value the decimal value it corresponds to.
assign `divisor` to the number in the RomanNumeral class
iterate through each key in `NUMERAL_VALUES`
  for each numeral, get the corresponding value from the hash (converted to an integer), and use it as an argument for `divmod` on the divisor
    assign `result` to the return
    add a number of the current numeral that corresponds to the first value in `result`
    assign `divisor` to the second value in `result`
  if divisor is three or less, add the correct roman numeral to result_numeral and break the iteration
return `results_numeral`
=end


class RomanNumeral
  NUMERAL_VALUES = {M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1}
  
  def initialize(number)
    @number = number
  end

  def to_roman
    result_numeral = ''
    divisor = @number
    NUMERAL_VALUES.each_key do |key|
      if divisor == 1
        result_numeral << "I"
        break
      elsif divisor == 2
        result_numeral << "II"
        break
      elsif divisor == 3 
        result_numeral << "III"
        break
      else
        result = divisor.divmod(NUMERAL_VALUES[key])
        result_numeral << key.to_s * result[0]
        divisor = result[1]
      end
    end
    result_numeral
  end
end