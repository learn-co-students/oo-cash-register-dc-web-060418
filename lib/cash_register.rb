class CashRegister
   attr_accessor :total, :discount, :items

   def initialize(discount= 0)
    @total = 0
    @discount = discount
    @items = []
   end

   def add_item(title,price,optional_quantity=1)
    @title = title
    @price = price
    @optional_quantity = optional_quantity
    @total = @total + @price * @optional_quantity
    
    if @optional_quantity == 1
       @items.push(@title)
    else
        @count = 0
        while @count < @optional_quantity
            @items.push(@title)
            @count = @count + 1
        end
    end

   end

   def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
    
      @total = @total - @total * @discount/100
      @total.to_f
      "After the discount, the total comes to $#{@total}."
    end
   end

   def item
    @items
   end

  def void_last_transaction
    @total = @total - @price * @optional_quantity
  end

end
