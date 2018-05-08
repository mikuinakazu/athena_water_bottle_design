class Like < ApplicationRecord
  belongs_to :design, counter_cache: :likes_count
  belongs_to :user
end
