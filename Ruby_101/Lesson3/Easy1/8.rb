flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
arraystones = flintstones.to_a
flinstones = arraystones[2]
p flinstones

# or flintstones.assoc("Barney") apparently