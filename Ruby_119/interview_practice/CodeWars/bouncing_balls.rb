=begin
==============
Problem: 
given an initial, an amount by which that height decreases after each bounce and a window, 
give the number of times that the ball bounces to the height of the window. 
------------------------
-  Inputs: height, bounce, window
-  Output: times ball is in window
---
Explicit Rules
1. return -1 if height is less than 0, window is greater than h or bounce is less than zero or greater than 1
2.
3.

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
assign window_passes to 1
assign bounce_height to h
start a loop
  multiply bounce_height by bounce, store as new bounce_height
  break if bounce_height is less than window
  increment window_passes
end
---
=end

def bouncing_ball(h, bounce, window)
  return -1 if h < 0 || window >= h || bounce <= 0 || bounce >= 1
  window_passes = 1
  bounce_height = h
  loop do
    bounce_height *= bounce
    break if bounce_height <= window
    window_passes += 2
  end
  window_passes
end

p bouncing_ball(3, 0.66, 1.5) == 3
p bouncing_ball(30, 0.66, 1.5) == 15
p bouncing_ball(30, 0.75, 1.5) == 21
p bouncing_ball(30, 0.4, 10) == 3
p bouncing_ball(40, 1, 10) == -1
p bouncing_ball(-5, 0.66, 1.5) == -1
p bouncing_ball(1, 0.66, 0.66) == 1
p bouncing_ball(1, 0.66, 1) == -1
