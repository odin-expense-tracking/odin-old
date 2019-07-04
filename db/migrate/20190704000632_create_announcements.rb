class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.string :announcement_type
      t.string :name
      t.datetime :published_at

      t.timestamps
    end
  end
end
