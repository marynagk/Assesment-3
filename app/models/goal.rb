class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :recommendations
  has_many :events, as: :eventable
end
