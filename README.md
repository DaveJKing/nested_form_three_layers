# nested_form_three_layers


The important bit wher you declare accepts_nested_attributes_for


class Continent < ActiveRecord::Base
  has_many :countries
  accepts_nested_attributes_for :countries, :reject_if => :all_blank, allow_destroy: true
end

class Country < ActiveRecord::Base
  belongs_to :continent
  has_many :cities
  accepts_nested_attributes_for :cities, :reject_if => :all_blank, allow_destroy: true
end

class City < ActiveRecord::Base
  belongs_to :Country
end

Chechout the strong_params in the Continent controller, then the \views\continents files