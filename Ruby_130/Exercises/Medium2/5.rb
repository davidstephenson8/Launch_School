require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use!
require_relative "cash_register"
require_relative "transaction"

class CashRegisterTest < Minitest::Test
  def test_accept_money
    purchase = Transaction.new(50)
    register = CashRegister.new(900)
    purchase.amount_paid = 50
    assert_equal 950, register.accept_money(purchase)
  end

  def test_change
    purchase = Transaction.new(20)
    register = CashRegister.new(900)
    purchase.amount_paid = 50
    assert_equal 30, register.change(purchase)
  end

  def test_recipt
    item_cost = 20
    purchase = Transaction.new(item_cost)
    register = CashRegister.new(900)
    purchase.amount_paid = 50
    assert_output "You've paid $#{item_cost}.\n" do 
      register.give_receipt(purchase)
    end
  end
end
