# method implementation
def test
  yield(1)    # passing 1 block argument at block invocation time
end

# method invocation
test do |num1, num2| # expecting 2 parameters in block implementation
  puts "#{num1} #{num2}"
end