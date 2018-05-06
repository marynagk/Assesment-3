class Expertise < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :events, as: :eventable
end
