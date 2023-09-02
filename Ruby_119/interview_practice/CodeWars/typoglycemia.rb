=begin
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters
 of each word is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, 
ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia
P
given a series of words, rearrange letters that aren't the first and last letter in each word alphabetically. Special characters
should not be sorted, and will stay in place
rules
there are only -, ', ,, and . for punctuation
punctuation doesn't separate words
E
card-carrying
caac-dingrryg
D
array of words -> modify words -> string
A
helper method `scrambler`
  input is string
  if string size is less than 3 return string
  pull out the inner characters from the string assign these to `inner`
  sort those characters, initalize to `sorted`
  delete - , . ' from `sorted`
  iterate through the original string, create an array of values with indexes and characters to reinsert
  `reinsertions`
  iterate through reinsertions taking note of index
    pass first and second elements of each subarray to insert method
  join the characters in `sorted`, store as joined_sorted
  concatenate the first letter, `joined_sorted` and last letter of original string 
output is scrambled string

main algorithm
split string into words, initalize `words` to this array
transform `words`
  call `scrambler` on each word
join `words``, return result
=end

def scrambler(string)
  return string if string.size < 3
  deleted_string = string.delete("-',.")
  inner = deleted_string[1..-2]
  sorted = inner.chars.sort
  full_sorted_string = deleted_string[0] + sorted.join + deleted_string[-1]
  reinsertions = [] 
  string.chars.each_with_index do |char, index|
    reinsertions << [index, char] if ["'", ",", ".", "-"].include?(char)
  end
  reinsertions.each do |subarray|
    full_sorted_string.insert(subarray[0], subarray[1])
  end
  full_sorted_string
end

def scramble_words(string)
  words = string.split
  words.map! do |word|
    scrambler(word)
  end
  words.join(" ")
end

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
