answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# outputs 34. Variable isn't mutated by the mess_with_it method because it's immutable as an integer. The += method is assignment and non-mutating, anyway.