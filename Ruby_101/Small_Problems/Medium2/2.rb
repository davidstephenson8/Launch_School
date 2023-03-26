BLOCKS = {B: "O", X: "K", D: "Q", C: "P", N: "A",
  G: "T", R: "E", F: "S", J: "W", H:"U",
  V: "I", L: "Y", Z: "M"}

  p BLOCKS[:B]
  p BLOCKS.keys
  p BLOCKS.values

def block_word?(string)
  used_blocks = []
  characters = string.chars.map! do |character|
    character.upcase
  end
  characters.each do |letter|
    if BLOCKS.keys.include?(letter.to_sym)
      used_blocks << BLOCKS.assoc(letter.to_sym) 
    else
      used_blocks << BLOCKS.assoc(BLOCKS.key(letter))
    end
  end
  used_blocks.uniq == used_blocks
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
