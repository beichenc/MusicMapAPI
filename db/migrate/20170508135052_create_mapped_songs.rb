class CreateMappedSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :mapped_songs do |t|
      t.references :user, foreign_key: false
      t.string :username
      t.string :songname
      t.string :artist
      t.string :genres, array: true, default: []
      t.string :songimg
      t.integer :year
      t.integer :month
      t.integer :day
      t.timestamp :timestamp
      t.decimal :lat
      t.decimal :lng
      t.string :uri

      t.timestamps
    end
  end
end
