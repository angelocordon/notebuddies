class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :youtube_url, unique: true
      t.string :title

      t.timestamps
    end
  end
end
