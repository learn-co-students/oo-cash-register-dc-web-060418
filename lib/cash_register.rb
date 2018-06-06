class CashRegister
    attr_accessor :total, :discount, :last_total, :items

    def initialize(employee_discount=0)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        #save previous total to storage in case need to void
        @last_total = total
        #if several items, add every one of them
        quantity.times do 
            @items << title
        end
        @total += price*quantity
    end

    def apply_discount
        #if no discounts
        return "There is no discount to apply." if @discount==0
        #if discount exists, calculate
        multiplier = 1 - (@discount / 100.0)
        @total = (total * multiplier).round
        return "After the discount, the total comes to $#{@total}."

    end

    def void_last_transaction
        @total = @last_total
    end

end
