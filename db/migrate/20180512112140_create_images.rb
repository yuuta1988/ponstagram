class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text        :image, null: false
      t.text        :text
      t.integer     :likes_count
      t.timestamps  null: false
    end
  end
end
