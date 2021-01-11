class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.integer :aurthor_id
      t.string :img
      t.integer :user_id
    end 
  end
end
