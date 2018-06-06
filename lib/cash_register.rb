
class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @transactions = []
    end

    def add_item(title, price, quantity = 1)        
        quantity.times do
            @items << title
            @transactions << price
        end
        self.total += (price * quantity)
    end
        

    def apply_discount()
        if @discount == 0
            return "There is no discount to apply."
        else
            @total -= @total * @discount/100
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @items.pop
        @total -= @transactions.pop
    end
end
