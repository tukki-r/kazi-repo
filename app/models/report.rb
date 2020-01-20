class Report < ApplicationRecord
  validates :checkbox, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
end
