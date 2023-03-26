flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
position = 0

flintstones.each_with_index do |flintstone, index|
  flintstones_hash[flintstone] = index
end

other_flintstones_hash = flintstones.each_with_object({}) do |flintstone, hash|
                          hash[flintstone] = position
                          position += 1 
end
  

p flintstones_hash
p other_flintstones_hash