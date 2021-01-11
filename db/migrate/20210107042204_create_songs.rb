class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :album_id
      t.string :img
      t.integer :user_id
    end 
  end
end
