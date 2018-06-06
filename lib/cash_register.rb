
class CashRegister
    attr_accessor :total, :discount, :items_arr, :last_item_added

    def initialize (employee_discount = 0)
        @total = 0 
        @discount = employee_discount
        @items_arr=[]
        @last_item_added = {}
    end 

    def add_item (title, price, quantity = 1)
        self.total+=price*quantity
        quantity.times do
            self.items_arr << title
        end
        self.last_item_added[:quantity] = quantity
        self.last_item_added[:price] = price 
    end 

    def apply_discount
        self.total= self.total*((100.0-self.discount)/100.0)
        if(self.discount > 0)
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end 
    end 

    def items 
        self.items_arr
    end

    def void_last_transaction
        self.items_arr.pop(self.last_item_added[:quantity])        
        self.total-=self.last_item_added[:price]*self.last_item_added[:quantity]
    end 
end