class Like < ApplicationRecord
  belongs_to :report, counter_cache: :likes_count
  belongs_to :user
  validates_uniqueness_of :report_id, scope: :user_id
end
