=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :

a tuple (t, k) (in Python)
an array [t, k] (in Ruby and JavaScript)
in C, return k and write to the string t passed in parameter
Example #1:

for string

s = "ababab";
the answer is

("ab", 3)
Example #2:

for string

s = "abcde"
the answer is

("abcde", 1)
because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.
=end

def f(s)
  substrings = []
  (0..s.size - 1).each do |index|
    substrings << s[0..index]
  end
  result = []
  substrings.each do |substring|
    (0..s.size).each do |integer|
      if substring * integer == s
        result = [substring, integer]
      end
    end
  end
  result
end

p f("abababab")
p f("abcde")
p f("a")