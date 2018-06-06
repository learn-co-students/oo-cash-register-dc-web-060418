require "pry"



class CashRegister
  attr_accessor :total



  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @cart = []
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @quantity = quantity
    @total += @price * @quantity
    quantity.times {@cart << item}  #<---- make another class if you need to store multiple values together
  end

  def apply_discount
    if @discount == nil
        "There is no discount to apply."
    else
      @total = @total.to_f - @total.to_f * (@discount.to_f/100.00)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @price
  end
end
