def greetings(array, swag)
  "Hey #{array.join(" ")}! Nice to have a #{swag[:title]} #{swag[:occupation]} in our midst!"
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) 