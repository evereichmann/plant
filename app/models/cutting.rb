class Cutting < ApplicationRecord
    has_many :offspring , class_name: "Cutting" , as: :parent
    belongs_to :parent , polymorphic: true 
   
   
    has_many :cutting_notes
end
