class AddImagesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :text, null: false
  end
end
