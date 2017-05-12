class AddIndexToMappedSongs < ActiveRecord::Migration[5.1]
  def change
    add_index :mapped_songs, :username, unique: true
  end
end
