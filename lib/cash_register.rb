require 'pry'
class CashRegister

    attr_accessor :total, :discount, :price, :items

    def initialize(discount=0)
        @total = 0
        @discount=discount
        @items=[]
       
    end

    def add_item(title,price,quantity=1)
        @price=price
        @total += price * quantity
        if quantity > 1
            i=0
            while i<quantity
                @items << title
                i+=1
            end
        else
            @items << title
        end
        self.price = @price*quantity
    end

    def apply_discount
        if @discount > 0
            @discount = (price * discount)/100
            @total -= @discount
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
        @total
        @new_price = price


    end

    # def items
    #     @items
    # end

    def void_last_transaction
        @total -= self.price
    end

end
