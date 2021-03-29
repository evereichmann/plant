class Container < ApplicationRecord
    has_many :plants
    has_many :cuttings , as: :parent
    validates :pot_number, presence: true
    accepts_nested_attributes_for :plants


    def container_number_and_plant_name
        "#{plant_name} | #{pot_number}"
    end  

    def number_of_plants
        in_pot = Cutting.all.select{|c| c.container_id == self.id }
        self.plants.count + in_pot.count
    end    
end
