class PlantNote < ApplicationRecord
    belongs_to :plant
    # has_one_attached :plant_image
end
