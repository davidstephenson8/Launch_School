ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
lowest_age = 304958723405982374502938475203948572034985723049587230495827340598273405982734509283475

ages.each do |name, age|
  lowest_age = age if age < lowest_age
end

p lowest_age

ages.values.min