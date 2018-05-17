class Like < ActiveRecord::Base
  validates :user_id, presence: true
  validates :image_id, presence: true
end
