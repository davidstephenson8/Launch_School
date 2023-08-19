=begin
A
if count of a number is 3 add the corresponding value to the score

add the count of 1s and 5s to the score if they're less than three multiplied by 100 or 
50, respectively
if the count of 1 or 5 is greater than three, add number of 1s or 5s over three to the score
  multiplied by 100 or 50, respectively
=end
def score( dice )
  score = 0
  dice.uniq.each do |number|
    if dice.count(number) >= 3 && [2, 3, 4, 6].include?(number)
      elsif number == 2
        score += 200
      elsif number == 3
        score += 300
      elsif number == 4
        score += 400
      elsif number == 6
        score += 600
      end
    elsif number == 1 || number == 5
      if dice.count(number) < 3
        score += 100 * dice.count(number) if number == 1
        score += 50 * dice.count(number) if number == 5
      elsif dice.count(number) > 3
        if number == 1
          score += 100 * (dice.count(number) - 3)
          score += 1000
        elsif number == 5
          score += 50 * (dice.count(number) - 3) 
          score += 500
        end
      end
    end
  end
  score
end

p score([2, 3, 4, 6, 2])
p score([2, 2, 2, 3, 3])
