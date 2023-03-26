ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_age = ages.values.sum

age_array = ages.each_with_object([]) do |(name, age), age_array|
            age_array << ages[name]
end

total_age2 = age_array.sum

total_age3 = ages.values.inject(:+)

p total_age
p total_age2
p total_age3