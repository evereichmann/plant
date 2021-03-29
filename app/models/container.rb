class Container < ApplicationRecord
    has_many :plants
    has_many :cuttings , as: :parent
    validates :pot_number, presence: true
    accepts_nested_attributes_for :plants
end
