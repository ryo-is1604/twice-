class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :music
      t.string :youtube_url
      t.text :about

      t.timestamps
    end
  end
end
