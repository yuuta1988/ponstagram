class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, foreign_key: true
      t.integer :image_id, foreign_key: true
      t.text :text, null: false
      t.timestamps
    end
  end
end
