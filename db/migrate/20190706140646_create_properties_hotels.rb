class CreatePropertiesHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :properties_hotels do |t|
      t.string :name,   null: false
      t.string :phone,  limit: 20
      t.string :email,  limit: 70
      t.integer :rooms, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
