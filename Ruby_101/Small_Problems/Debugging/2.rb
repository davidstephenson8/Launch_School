def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# "HEY you" is returned because the array of characters returned by #chars is mutated, but that doesn't mutate the
# string object that name points to. The array of characters is distinct from the string object.