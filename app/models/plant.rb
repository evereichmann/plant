class Plant < ApplicationRecord
  belongs_to :order
  has_many :plant_notes
  has_many :cuttings , as: :parent

  # accepts_nested_attributes_for :cuttings, allow_destroy: true
  # calculates the days to recover a plant 
  def recovered?
  date = self.arrival_date
  rec_date = self.recovery_date
        if rec_date == nil
          "Not Recovered"
        elsif date > rec_date
          "Not Recovered"
        else
          a = Date.parse("#{date}")
          b = Date.parse("#{rec_date }")
          c = b.mjd - a.mjd
          "#{rec_date.month}/#{rec_date.day}/#{rec_date.year} | #{c} day"
        end
  end


  # def plant_name_and_info
  #   "#{name} | #{tag} | #{recovered?}"
  # end  

  # calculates number of days a plant was in a box
  def days_in_box
    a = Date.parse("#{self.order.date_shipped}") 
    b = Date.parse("#{self.arrival_date}") 
    c = b.mjd - a.mjd
    c
  end  
end
