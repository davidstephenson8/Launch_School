class Meetup
  require "date"

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(day, week)
    @day = day.downcase
    @week = week.downcase
    result = Date.civil(@year, @month, 1)
    while @day != Date::DAYNAMES[result.wday].downcase
      result += 1
    end
    case @week
    when "first"
      result += 0
    when "second"
      result += 7
    when "third"
      result += 14
    when "fourth"
      result += 21
    when "fifth"
      result += 28
    when "last"
      result += 28
      result -= 7 if result.month != @month
    when "teenth"
      until result.mday > 13
        result += 7
      end 
    end
    result = nil if result.month != @month
    result
  end
end

