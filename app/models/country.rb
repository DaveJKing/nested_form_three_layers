class Country < ActiveRecord::Base
  belongs_to :continent, dependent: :destroy
  
  has_many :cities 

  accepts_nested_attributes_for :cities, :reject_if => :all_blank, allow_destroy: true
 
  
end
