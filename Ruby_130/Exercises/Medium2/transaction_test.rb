require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!

require_relative "transaction"

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    input = StringIO.new("200\n")
    output = StringIO.new
    purchase = Transaction.new(10)
    assert_equal 200, purchase.amount_paid
  end
end
