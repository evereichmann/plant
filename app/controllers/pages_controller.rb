class PagesController < ApplicationController
    def dashboard
        @plants = Plant.all
        @orders = Order.all 
        @cuttings = Cutting.all
    end
end
