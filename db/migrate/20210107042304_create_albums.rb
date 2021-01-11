class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :img
      t.integer :user_id
    end 
  end
end
