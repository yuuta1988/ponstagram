class AddUserIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :user_id, :integer, foreign_key: true
  end
end
