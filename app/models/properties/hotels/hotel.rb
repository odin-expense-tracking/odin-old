class Properties::Hotel < ApplicationRecord

  validates_presence_of :name, :user_id, :rooms
  validates_numericality_of :rooms, greater_than: 0

  has_many :properties_hotels_daily_stats, :class_name => 'Properties::Hotels::DailyStat'
  has_one :properties_address, :class_name => 'Properties::Address'
  has_many :expenses, as: :expensible
  belongs_to :user

end
