puts "Please write a word or multiple words:"
string = gets.chomp

characters = string.split.join("").size

puts "There are #{characters} characters in \"#{string}\"."