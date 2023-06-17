=begin
==============
Problem
given a url as a string, return the domain name as a string
------------------------
-  Inputs: string (url)
-  Output: string (domain name)
---
** Rules **
Explicit
1. anything following www. or http:// is a domain name
2. anything following the domain name should not be returned
3. 

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: www.google.com
  -  Output: google
-  Example 2
  -  Inputs: http://zombie-heads.com
  -  Output: zombie-heads
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
delete "http://", "https://" and "www." from string
  create an array of characters from original string and from the strings we want to delete
  iterate through the array, checking to see if a portion of the array is the same as any of the strings we want to delete
  if part of the array is the same, delete that part of the array
    break
join the remaining characters
create a variable `index` thats 0
start a loop
  check to see if string at current index is a period
    if it is, return the string from the beginning to one before the current index
  increment index
=end

def domain_name(url)
  http = "http://"
  https = "https://"
  www = "www."
  http_char = http.chars 
  https_char = https.chars
  www_char = www.chars
  url_chars = url.chars
  url_chars.each_with_index do |char, index|
    if url_chars[index, 4] == www_char
      url_chars[index, 4] = nil
    elsif url_chars[index, 7] == http_char
      url_chars[index, 7] = nil
    elsif url_chars[index, 8] == https_char
      url_chars[index, 8] = nil
    end
  end
  url_chars = url_chars.join.chars
  domain = ""
  url_chars.each_with_index do |char, index|
    if char == "."
      domain = url_chars[0...index].join
      break
    end
  end
  domain
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") ==  "xakep"
p domain_name("https://youtube.com") == "youtube"