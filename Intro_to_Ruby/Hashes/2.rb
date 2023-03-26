=begin 
Program to illustrate the differences between merge(other_hash) and merge!().
The primary difference between the two is that merge() conserves the original hash and merely returns the
value of the created hash, while merge!() adds the new values into the original hash, mutating it in the
process.
=end

#demonstrating .merge preserves h1

h1 = {John: "rhythm", George: "lead", Paul: "bass", Ringo: "drums"}
h2 = {Impersonator: "Paul"}

p "Here are our first two hashes. We're going to merge them"
p h1
p h2

h3 = h1.merge(h2)

p "We merged them, but #{h1} is still here!"
p "here's our new hash! #{h3}"

#demonstrating .merge! changes h1 

h1 = {John: "rhythm", George: "lead", Paul: "bass", Ringo: "drums"}
h2 = {Impersonator: "Paul"}

p "Here are our first two hashes. We're going to merge them"
p h1
p h2

h3 = h1.merge!(h2)

p "Oh no, it looks like something happened"
p "#{h1}"
p "#{h3}"
p "yeah, h1 is the same as our changed one now. Bye h1."