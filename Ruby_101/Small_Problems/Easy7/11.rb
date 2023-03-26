vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  counts = Hash.new(0)
  array.each do |value|
    counts[value] += 1
  end
  counts.each do |vehicle, count|
    p "#{vehicle} => #{count}"
  end
end

count_occurrences(vehicles)

