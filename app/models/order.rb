class Order < ApplicationRecord
    has_many :plants
    has_many :order_notes

    # used for dropdown box when enter plants to know seller name and order date 
    def name_and_date
        if date_order == nil
            "#{seller_name}"
        else    
        "#{seller_name} | #{date_order.month}/#{date_order.day}/#{date_order.year}"
        end
    end 

    # if order has filled or al plants added to order it will be removed from plant form seller select
    def filled?
        if self.units == self.plants.length
            "Filled"
        else
            self.name_and_date
        end    
    end 
end
