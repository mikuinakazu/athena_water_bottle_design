class Like < ApplicationRecord
  belongs_to :design, counter_cache: :likes_count
  belongs_to :user

  validates :user_id, uniqueness: {scope: :design_id}
end
