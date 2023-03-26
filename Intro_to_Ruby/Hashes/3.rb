dog = {color: "brown", breed: "viszla", top_speed: "35 mph", disposition: "cuddly"}

#to put keys
dog.each {|k, v| puts k}

#to put values
dog.each {|k, v| puts v}

#to put both
dog.each {|k, v| puts "My favorite dog is #{k}: #{v}"}

