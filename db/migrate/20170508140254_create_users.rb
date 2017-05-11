class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :displayname
      t.string :email
      t.string :birthday
      t.string :producttype
      t.string :href
      t.string :uri
      t.string :imageurl
      t.integer :followers
      t.integer :visits

      t.timestamps
    end
  end
end
