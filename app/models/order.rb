class Order < ApplicationRecord
    has_many :plants
    has_many :order_notes

    def name_and_date
        if date_order == nil
            "#{seller_name}"
        else    
        "#{seller_name} | #{date_order.month}/#{date_order.day}/#{date_order.year}"
        end
    end 

    def filled?
        if self.units == self.plants.length
            "Filled"
        else
            self.name_and_date
        end    
    end 
end
