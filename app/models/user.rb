class User < ApplicationRecord
    has_many :notes
    has_many :recipes, through: :notes
end
