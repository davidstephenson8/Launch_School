require 'pry'

DEGREE = "\xC2\xB0"
MINUTE_CONVERSION = 60
SECOND_CONVERSION = 60

def dms(int)
  degree = 0
  minutes = 0
  seconds = 0
  p degree = int.to_i
  p minutes = ((int - degree) * 60).to_i unless degree == 0
  p seconds = ((((int - degree) * 60) - minutes) * 60).to_i unless degree == 0 || minutes == 0
  puts "%(#{degree}#{DEGREE}#{sprintf("%2.2d", minutes)}'#{sprintf("%2.2d", seconds)}\")"
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")