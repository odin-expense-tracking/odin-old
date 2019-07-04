class CreateGuidesVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :guides_videos do |t|
      t.string :name
      t.string :video_link

      t.timestamps
    end
  end
end
