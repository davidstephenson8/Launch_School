=begin
==============
Problem: 
take a number from 0 to 255 in decimal notation and convert it to hexadecimal
------------------------
-  Inputs: 3 numbers in hexadecimal
-  Output: a string combining all 3 RGB numbers in hexadecimal combined
---
Rules
1. numbers out of range are rounded to the next closest value
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
Data Structure/Modelling
--------------

---
Algorithm
---------
  initalize constant for range from integers 10 to 16 to characters from A to F HEX
  helper method dec_to_hex, accepts integer
    initialize and empty array to `hex_results`
    start a loop
      divide integer by 16, initialize to `hex_number`
      add `hex_number`` to `hex_results`
      set integer equal to integer minus hex number multiplied by 16
      if integer is less than 16, add integer to `hex_results` and break
    transform hex_results
      if value in hex_results is in HEX, convert to corresponding value in HEX
      otherwise change the value into a string
    return joined strings in hex_results

  main method
    if number is less than 0, set number equal to zero
    if number is greater than 255 set number equal to 255
    create an empty array, initialize it to `hex_results`
    pass each input to dec_to_hex, add each result to hex_results
    join elements in hex_results
    
---
=end

hash = Hash.new
(10..15).to_a.each_with_index do |char, index|
  hash[char] = ("A".."F").to_a[index]
end

p HEX = hash

def dec_to_hex(int)
  hex_results = []
  loop do 
    hex_number = int / 16 
    hex_results << hex_number
    int = int - (hex_number * 16)
    if int < 16
      hex_results << int
      break
    end
  end
  hex_results.map! do |ele|
    if HEX[ele]
      HEX[ele]
    else
      ele.to_s
    end
  end
  hex_results.join
end

dec_to_hex(15)
dec_to_hex(32)
dec_to_hex(254)

def rgb(r, g, b)
  colors = [r, g, b]
  colors.map! do |color|
    if color > 255 
      color = 255
    elsif color < 0
      color = 0
    else 
      color
    end
  end
  colors.map! do |color|
    dec_to_hex(color)
  end
  colors.join
end

p rgb(300, 255, 255)
p rgb(0, 0, -20)
p rgb(255, 255, 255)
p rgb(0, 0, 0)
p rgb(15, 152, 87)