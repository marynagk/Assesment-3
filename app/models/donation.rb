class Donation < ApplicationRecord
  belongs_to :charity
  belongs_to :user
  belongs_to :goal
end
