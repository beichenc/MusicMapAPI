class AddDisplaynameToMappedSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :mapped_songs, :displayname, :string
  end
end
