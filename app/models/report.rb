class Report < ApplicationRecord
  validates :checkbox, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
