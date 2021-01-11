class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :bio
      t.string :img
      t.integer :user_id
    end 
  end
end
