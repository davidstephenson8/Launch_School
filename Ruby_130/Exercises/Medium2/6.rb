require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

require_relative "transaction"

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    input = StringIO.new("20\n")
    output = StringIO.new
    purchase = Transaction.new(10)
    purchase.prompt_for_payment(input: input, output: output)
    assert_equal 20, purchase.amount_paid
  end
end
6.