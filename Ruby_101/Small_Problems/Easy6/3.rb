

def find_fibonacci_index_by_length(int)
  n = 0
  fibonacci_array = [1, 1]
  loop do
    fibonacci_array << fibonacci_array[n] + fibonacci_array[n + 1]
    n += 1
    if fibonacci_array[n].to_s.size == int
      break
    end
  end
  n + 1
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847