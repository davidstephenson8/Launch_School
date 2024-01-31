def format_date(date)
  date.sub(/\A(\d\d\d\d)[-\/](\d\d)[-\/](\d\d)\z/, '\3.\2.\1')
end

p format_date("2016-06-17")
p format_date("2016/06/12")