class CreatePropertiesAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :properties_addresses do |t|
      t.string :street_1,             null: false
      t.string :street_2
      t.string :city,                 null: false
      t.string :state,                null: false
      t.string :zipcode,              null: false
      t.string :country,              null: false, default: 'US'
      t.integer :addressable_id,      null: false
      t.string :addressable_class,    null: false

      t.timestamps
    end
  end
end
