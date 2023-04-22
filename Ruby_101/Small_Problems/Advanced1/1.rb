=begin
P
input - a text file
output - a string replacing %{} with the correct word
E
D
replacements in arrays, keep text as string
A
read text from file
define word lists
break text file into arrays
transform each element in array that matches targeted format
return transformed array

=end

ADJECTIVES = %W(quick lazy sleepy ugly)
NOUNS = %w(fox dog head leg)
VERBS = %w(jumps lifts bites licks)
ADVERBS = %w(easily lazily noisily excitedly)

original_madlib = File.read("text.txt")

def madlib(text)
  words = text.split
  modified_madlib = words.map do |word|
    if word.match(/%{adjective}.*/)
      ADJECTIVES.sample
    elsif word.match(/%{noun}.*/)
      NOUNS.sample
    elsif word.match(/%{adverb}.*/)
      ADVERBS.sample
    elsif word.match(/%{verb}.*/)
      VERBS.sample
    else 
      word
    end
  end
  puts modified_madlib.join(" ")
end

madlib(original_madlib)