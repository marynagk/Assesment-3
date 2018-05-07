class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :recommendations
  has_many :events, as: :eventable
  mount_uploader :image, ImageUploader
end
