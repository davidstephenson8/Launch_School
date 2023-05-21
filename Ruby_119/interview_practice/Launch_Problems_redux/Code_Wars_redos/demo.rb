array = [1, 1, 1, 2, 1, 3, 1, 4]

array.each_with_index do |num, index|
  array[index + 1..-1].each_with_index do |num2, index2|
    break if num2 == 1
    p num2
  end
end