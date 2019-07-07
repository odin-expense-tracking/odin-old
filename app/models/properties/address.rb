class Properties::Address < ApplicationRecord
  validates_presence_of :street_1, :city, :state, :zipcode, :country

  belongs_to :properties_hotel, :class_name => 'Properties::Hotel'
end
