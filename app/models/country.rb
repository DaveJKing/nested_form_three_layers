class Country < ActiveRecord::Base
  belongs_to :continent
  
  
  
  
  # has_many :cities, dependent => :destroy
#   
  # accepts_nested_attributes_for :cities, :reject_if => :all_blank, allow_destroy: true
#  
  
end
