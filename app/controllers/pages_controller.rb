class PagesController < ApplicationController
    def dashboard
        @plants = Plant.all
        @orders = Order.all 
    end
end
