require "date"

def friday_13th(integer)
  date = Date.new(integer, 1, 13)
  number_of_friday_the_13ths = 0
  n = 0
  until n >=12
    if date.friday?
      number_of_friday_the_13ths += 1
    end
    date = date >> 1
    n += 1
  end
  number_of_friday_the_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
