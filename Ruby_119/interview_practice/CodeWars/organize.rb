# Write a function that maps a string into an array of name, string, and occupation pairs. 
#Return an empty array if given an empty string.

=begin
P
take array data and reorganize it into an array of hashes with keys for each piece of information
A
create an array with subarrays of the parts of the string that we're interested in
  split the string at ", ", assign to variable `words`
  split words into subarrays of each 3 consecutive items, assign to demographics
  from `demographics` assign each consecutive element
  transform through celebrity_demographics
    iterate through each individual with an object
      assign the first object in the index to name
      the second object in the array to age
      and the last object in the array to :occupation
  return celebrity_demographics
=end

def organize(string)
  words = string.split(", ")
  celebrity_demographics = words.each_slice(3).to_a
  celebrity_demographics.map! do |celebrity|
    celebrity.each_with_object({}) do |data, hash|
      hash[:name] = celebrity[0]
      hash[:age] = celebrity[1]
      hash[:occupation] = celebrity[2]
    end
  end
  celebrity_demographics
end


p organize("John Mayer, 41, Singer, Emily Blunt, 36, Actor") == [
  {:name=>"John Mayer", :age=>"41", :occupation=>"Singer"},
  {:name=>"Emily Blunt", :age=>"36", :occupation=>"Actor"}
]

p organize("Conan O'Brien, 56, Talk Show Host, Anna Wintour, 69, Editor") == [
  {:name=>"Conan O'Brien", :age=>"56", :occupation=>"Talk Show Host"},
  {:name=>"Anna Wintour", :age=>"69", :occupation=>"Editor"}
]

p organize("") == []