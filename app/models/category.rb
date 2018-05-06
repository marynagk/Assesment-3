class Category < ApplicationRecord
    has_many :expertises
    has_many :goals
end
