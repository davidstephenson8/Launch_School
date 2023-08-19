=begin
==============
Problem: 
take an integer represeting a duration and return it in a human readable format
------------------------
-  Inputs: integer
-  Output: string
---
Explicit Rules
1. if integer is zero, returns "now"
2. elements are joined by ", ", except for last 2 elements, which are joined by " and "
3. units of time used are years, days, hours, minutes and seconds

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure
--------------

---
Algorithm
---------
assign constants to their respective second values
assign years to the given integer divided by YEAR
assign days to the modulus of int and YEAR
reassign days to days divided by DAY
assign hours to the modulus of int and DAY
reassign hours to hours divided by HOUR
assign minutes the the modulus of int and HOUR
reassign minutes to minutes divided by MINUTE
assign seconds to the modulus of int and MINUTE




create a results string and assign it to an empty string
create a units array with string names of all 
to create the output string, add 'years', 'days', 'hours', 'minutes' and 'seconds' to an array, `times`
iterate through the `times`
if the variable is not equal to zero
  if results string is empty, add element to results string with the corresponding index from `units` appended
  if the results string is not empty and this is the last element in the array, add this element to the results string
    with " and " appended to the front with the corresponding index from `units` appended
  otherwise, add this element to the results string with ", " added to the front of it with the corresponding 
    index from `units` appended
return the results string
---
=end

YEAR = 31536000
DAY = 86400
HOUR = 3600
MINUTE = 60
UNITS = %w(year day hour minute second)

def format_duration(int)
  years = int / YEAR
  days = int % YEAR
  days = days / DAY
  hours = int % DAY
  hours = hours / HOUR
  minutes = int % HOUR
  minutes = minutes / MINUTE
  seconds = int % MINUTE
  result = ""
  times = [years, days, hours, minutes, seconds]
  times.each_with_index do |element, index|
    if element == 0
      next
    elsif result.empty?
      result << "#{element} #{UNITS[index]}"
      result << "s" if element > 1
    elsif result && times[index + 1 .. -1].all?(0)
      result << " and #{element} #{UNITS[index]}"
      result << "s" if element > 1
    else
      result << ", #{element} #{UNITS[index]}"
      result << "s" if element > 1
    end
  end
  result
end

p format_duration(1) == "1 second"
p format_duration(62) == "1 minute and 2 seconds"
p format_duration(120) == "2 minutes"
p format_duration(3600) == "1 hour"
p format_duration(3662) == "1 hour, 1 minute and 2 seconds"
p format_duration(36553600)
