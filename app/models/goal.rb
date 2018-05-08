class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :recommendations
  has_many :events, as: :eventable
  has_many :donations
  mount_uploader :image, ImageUploader

end
