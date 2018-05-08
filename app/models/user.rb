class User < ApplicationRecord
    has_many :expertises
    has_many :goals
    has_many :recommendations
    has_many :comments
    has_many :donations
end
