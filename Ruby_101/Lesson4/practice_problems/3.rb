ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

youngins = ages.select do |key, value|
              value < 100
end

youngers = ages.each_with_object({}) do |(key, value), hash|
  hash[key] =  ages[key] if value < 100
end

ages.select! do |_, values|
  values < 500
end

p youngins
p youngers
p ages