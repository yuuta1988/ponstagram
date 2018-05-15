class AddnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false, index: true
  end
end
