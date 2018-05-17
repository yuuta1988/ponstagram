class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id, foreign_key: true
      t.integer :image_id, foreign_key: true

      t.timestamps null: false
    end
  end
end
