class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :bio
      t.string :img
      t.integer :user_id
    end 
  end
end
