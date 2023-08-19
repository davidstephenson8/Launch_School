def zero(n)
  multipliers = [0, 1, 6, 31, 156, 781, 3906, 19531]
  base_5 = []
  until n == 0
    base_5 << n % 5
    n = n / 5
  end
  transformed = base_5.map.with_index do |number, index|
    number * multipliers[index]
  end
  transformed.sum
end

# p zero(0)
# p zero(5)
# p zero(555)
# p zero(1359)
p zero(7392)
