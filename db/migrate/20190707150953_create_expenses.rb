class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.integer :expensable_id,   null: false
      t.string :expensable_type,  null: false
      t.string :name,             null: false, default: 'Miscellaneous'
      t.decimal :value,           default: 0
      t.date :date

      t.timestamps
    end
  end
end
