require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    self.total += price * quantity
      quantity.times do
        @item << title
      end
    @total
  end

  def apply_discount
    if @discount != 0
      self.total = (@total * (100.0 - @discount.to_f)/100).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    self.total = self.total - @last_transaction
  end

end
