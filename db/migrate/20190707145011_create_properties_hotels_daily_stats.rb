class CreatePropertiesHotelsDailyStats < ActiveRecord::Migration[6.0]
  def change
    create_table :properties_hotels_daily_stats do |t|
      t.references :properties_hotel, null: false, foreign_key: true
      t.date :date
      t.decimal :occupancy,           default: 0
      t.integer :rooms_occupied,      default: 0
      t.decimal :credit_sales,        default: 0
      t.decimal :cash_sales,          default: 0
      t.decimal :avg_daily_rate,      default: 0
      t.decimal :revenue,             default: 0
      t.decimal :revenue_par,         default: 0
      t.decimal :gross,               default: 0
      t.decimal :total_expenses,      default: 0
      t.decimal :profit,              default: 0

      t.timestamps
    end
  end
end
