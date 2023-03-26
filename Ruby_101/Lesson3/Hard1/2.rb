greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

=begin

I think that greetings will return as {a: 'hi}. I think that's because we're using assignment for informal_greeting first, and then using the shovel method
a new object is created. Then that object is mutated, but the value in the hash stays the same.