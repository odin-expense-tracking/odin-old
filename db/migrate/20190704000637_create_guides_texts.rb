class CreateGuidesTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :guides_texts do |t|
      t.string :name

      t.timestamps
    end
  end
end
