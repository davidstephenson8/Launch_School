=begin
problem
generate a hashtag from a string given to you. If the string contains more than 139 characters or is an empty string
return false. Otherwise create a hashtag that capitalizes each word and then puts a hash in front of all of it and return
that value
examples:
p generateHashtag("") == false
empty string
p generateHashtag(" " * 200) == false
just a string of spaces
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
working as expected
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
A:
split up the string into words, initalize variable `words` to this array
capitalize each word in words
join all elements in words
if `words` is empty return false
if `hashtag` is greater than 140 characters, return false
return `hashtag`
=end

p generateHashtag("") == false

p generateHashtag(" " * 200) == false

p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"

p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false