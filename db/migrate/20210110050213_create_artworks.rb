class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name
      t.integer :painter_id
      t.integer :user_id
      t.string :img
    end 
  end
end
