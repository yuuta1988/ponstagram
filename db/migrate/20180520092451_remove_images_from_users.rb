class RemoveImagesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :images, :text
  end
end
