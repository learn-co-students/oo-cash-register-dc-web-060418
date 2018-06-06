class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @item_name = []
    @total_array = []
  end

  def total
    @total
  end

  def add_item(item_name, price, qty=1)
    @total += (price * qty)
    qty.times {@item_name << item_name}
    qty.times {@total_array << price}
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total *= (1-(discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @item_name
  end

  def void_last_transaction
    @total -= @total_array.pop
  end

end
