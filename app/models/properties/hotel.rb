class Properties::Hotel < ApplicationRecord

  validates_presence_of :name, :users_id, :rooms
  validates_numericality_of :rooms, greater_than: 0
  has_many :properties_hotels_daily_stats, :class_name => 'Properties::Hotels::DailyStat'
  has_one :properties_address, :class_name => 'Properties::Address', :dependent => :destroy

  has_many :expenses, as: :expensible
  # belongs_to :user

  accepts_nested_attributes_for :properties_address
  validates_associated :properties_address

end
